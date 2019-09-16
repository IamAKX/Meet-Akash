import 'package:akash_giri/constants/ColorRes.dart';
import 'package:akash_giri/model/Education_model.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Card(
            elevation: 5, margin: EdgeInsets.all(0), child: titleHeader(width)),
        Expanded(
          child: Timeline.builder(
              itemBuilder: timelineBuilder,
              itemCount: educationList.length,
              physics: ClampingScrollPhysics(),
              position: TimelinePosition.Left),
        ),
      ],
    );
  }

  TimelineModel timelineBuilder(BuildContext context, int i) {
    final educationItem = educationList[i];
    return TimelineModel(
      Card(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '${educationItem.date}  |  ${educationItem.edcationType}',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    educationItem.instituteLogo,
                    width: 50,
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        educationItem.institute,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        educationItem.stream,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        educationItem.marks,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                educationItem.board,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                educationItem.place,
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
      position: TimelineItemPosition.right,
      isFirst: i == 0,
      isLast: i == educationList.length,
      iconBackground: i == 0 || i == 1 ? Colors.pink[500] : Colors.cyan[500],
      icon: i == 0 || i == 1
          ? Icon(
              LineIcons.book,
              color: Colors.white,
            )
          : Icon(
              LineIcons.graduation_cap,
              color: Colors.white,
            ),
    );
  }

  Container titleHeader(double width) {
    return Container(
      height: 150,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            menuColors[2][800],
            menuColors[2][400],
          ],
        ),
      ),
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
        child: Text(
          'Education',
          style: TextStyle(
              fontSize: 45, color: Colors.white, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
