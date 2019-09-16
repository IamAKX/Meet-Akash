import 'package:akash_giri/constants/ColorRes.dart';
import 'package:akash_giri/model/Projects_model.dart';
import 'package:akash_giri/widgets/ProjectCell.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Card(
              elevation: 5,
              margin: EdgeInsets.all(0),
              child: titleHeader(width)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text(
                'Recent Full Time',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 2,
                  color: menuColors[4],
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10),
            itemCount: recentProjectList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3),
            itemBuilder: (BuildContext context, int index) {
              return new ProjectCell(recentProjectList[index]);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text(
                'Previous Projects',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 2,
                  color: menuColors[4],
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            itemCount: projectList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3),
            itemBuilder: (BuildContext context, int index) {
              return new ProjectCell(getProjectList()[index]);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 0),
            child: Text(
              'LEGENDS - Platform Support',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Table(
              // columnWidths: {1: FractionColumnWidth(0.8)},
              // border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(LineIcons.android, color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Android'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(LineIcons.sellsy, color: Colors.brown),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('IOT/Arduino'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(LineIcons.windows, color: Colors.cyan),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Windows'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(LineIcons.apple, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('MacOS/iOS'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(LineIcons.globe, color: Colors.indigoAccent),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Website'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(LineIcons.linux, color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Linux'),
                    ),
                  ],
                ),

                // TableRow(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(4.0),
                //       child: Icon(LineIcons.question, color: Colors.blueGrey),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(4.0),
                //       child: Text('Undefined Platform'),
                //     ),
                //     SizedBox(),
                //     SizedBox(),
                //   ],
                // ),
              ],
            ),
          )
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
            menuColors[4][700],
            menuColors[4][400],
          ],
        ),
      ),
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
        child: Text(
          'Project',
          style: TextStyle(
              fontSize: 45, color: Colors.white, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
