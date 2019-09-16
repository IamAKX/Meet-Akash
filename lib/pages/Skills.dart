import 'package:akash_giri/constants/ColorRes.dart';
import 'package:akash_giri/model/Skill_model.dart';
import 'package:akash_giri/widgets/SkillCard.dart';
import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Card(
              elevation: 5,
              margin: EdgeInsets.all(0),
              child: titleHeader(width)),
          SizedBox(
            height: 10,
          ),

          // Programming languages
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text(
                  'Programming Language',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: menuColors[3],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: languageList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: SkillCard(languageList[index]),
                );
              },
            ),
          ),

          // Technology
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text(
                  'Technology',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: menuColors[3],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: technologyList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: SkillCard(technologyList[index]),
                );
              },
            ),
          ),

          // Database
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text(
                  'Database',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: menuColors[3],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: dbList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: SkillCard(dbList[index]),
                );
              },
            ),
          ),

          // Script
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text(
                  'Script',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: menuColors[3],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: scriptingList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: SkillCard(scriptingList[index]),
                );
              },
            ),
          ),

          // OTHER
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text(
                  'Other',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: menuColors[3],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: otherList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: SkillCard(otherList[index]),
                );
              },
            ),
          ),
        ],
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
            menuColors[3][700],
            menuColors[3][300],
          ],
        ),
      ),
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
        child: Text(
          'Skills',
          style: TextStyle(
              fontSize: 45, color: Colors.white, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
