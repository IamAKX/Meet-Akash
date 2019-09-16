import 'dart:async';

import 'package:akash_giri/model/Skill_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_udid/flutter_udid.dart';

List<Color> skillColorList = [
  Colors.red,
  Colors.deepOrange[300],
  Colors.amber,
  Colors.green,
  Colors.green[900]
];

final DBRef = FirebaseDatabase.instance.reference();

class SkillCard extends StatefulWidget {
  SkillModel _skillModel;

  SkillModel get skillModel => _skillModel;

  set skillModel(SkillModel skillModel) {
    _skillModel = skillModel;
  }

  SkillCard(SkillModel skillModel) {
    this.skillModel = skillModel;
  }
  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  StreamSubscription<Event> _onEndorseAddedSubscription;
  StreamSubscription<Event> _onEndorseChangedSubscription;
  StreamSubscription<Event> _onEndorseRemoveSubscription;
  String endorsementCount;
  int endCounter = 0;
  @override
  void initState() {
    super.initState();
    endorsementCount = "0";
    String collectionChild = widget.skillModel.name;
    collectionChild = collectionChild.replaceAll(" ", "");
    collectionChild = collectionChild.replaceAll("#", "Sharp");
    collectionChild = collectionChild.replaceAll("+", "P");

    _onEndorseAddedSubscription = DBRef.child('Endorsement')
        .child(collectionChild)
        .onChildAdded
        .listen(_onEndorseDataChangedListner);

    _onEndorseChangedSubscription = DBRef.child('Endorsement')
        .child(collectionChild)
        .onChildChanged
        .listen(_onEndorseDataChangedListner);

    _onEndorseRemoveSubscription = DBRef.child('Endorsement')
        .child(collectionChild)
        .onChildRemoved
        .listen(_onEndorseDataRemovedListner);
  }

  @override
  void dispose() {
    _onEndorseAddedSubscription?.cancel();
    _onEndorseChangedSubscription?.cancel();
    _onEndorseRemoveSubscription?.cancel();
    super.dispose();
  }

  void _onEndorseDataChangedListner(Event event) {
    endCounter++;

    setState(() {
      endorsementCount = endCounter.toString(); //(endCounter ~/ 2).toString();
    });
  }

  void _onEndorseDataRemovedListner(Event event) {
    endCounter--;

    setState(() {
      endorsementCount = endCounter.toString(); //(endCounter ~/ 2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return getSkillContainer();
  }

  Container getSkillContainer() {
    String name = widget.skillModel.name;
    String iconPath = widget.skillModel.icon;
    int expertiseLevel = widget.skillModel.expertiseLevel;
    return Container(
      // padding: EdgeInsets.all(5),
      width: 180,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            child: Card(
              elevation: 10,
              child: Container(
                width: 180,
                height: 200,
                padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AutoSizeText(
                      name,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Expertise Level',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LinearProgressIndicator(
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          skillColorList[expertiseLevel - 1]),
                      value: (expertiseLevel / skillColorList.length),
                    ),
                    Text(
                      '$expertiseLevel/${skillColorList.length}',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () => {addEndorsement(widget.skillModel)},
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  endorsementCount,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => {addEndorsement(widget.skillModel)},
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  "ENDORSE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          flex: 4,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 25,
            right: 20,
            child: Container(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  iconPath,
                  fit: BoxFit.contain,
                  matchTextDirection: true,
                  height: 50,
                  width: 50,
                ),
              ),
              padding: const EdgeInsets.all(5.0), // borde width
              decoration: new BoxDecoration(
                color: Colors.grey[200], // border color
                shape: BoxShape.rectangle,
              ),
            ),
          )
        ],
      ),
    );
  }

  getEndorsementCount(SkillModel skillModel) {
    String collectionChild = skillModel.name;
    collectionChild = collectionChild.replaceAll(" ", "");
    collectionChild = collectionChild.replaceAll("#", "Sharp");
    collectionChild = collectionChild.replaceAll("+", "P");
    int count = 999;
    DBRef.child('Endorsement').child(collectionChild).once().then((onValue) {
      Map data = onValue.value;
      if (data != null) {
        count = data.length;
      }
      print(collectionChild + " : " + data.toString());
    });
    // print(collectionChild + " : " + count.toString());
    endorsementCount = count.toString();
    setState(() {});
  }
}

addEndorsement(SkillModel skillModel) async {
  String collectionChild = skillModel.name;
  collectionChild = collectionChild.replaceAll(" ", "");
  collectionChild = collectionChild.replaceAll("#", "Sharp");
  collectionChild = collectionChild.replaceAll("+", "P");
  var consistentUdid = await FlutterUdid.consistentUdid;
  var udid = await FlutterUdid.udid;
  DBRef.child('Endorsement')
      .child("$collectionChild/$consistentUdid")
      .set({consistentUdid: udid});
}
