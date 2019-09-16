import 'package:akash_giri/constants/ColorRes.dart';
import 'package:akash_giri/model/Experience_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class Experience extends StatelessWidget {
  get timelineBuilder => null;

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
              itemBuilder: centerTimelineBuilder,
              itemCount: experienceList.length,
              physics: ClampingScrollPhysics(),
              position: TimelinePosition.Left),
        ),
      ],
    );
  }

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final experienceItem = experienceList[i];
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
                '${experienceItem.date}  |  ${experienceItem.place}',
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
                    experienceItem.logo,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        experienceItem.company,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText(
                        experienceItem.role,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      AutoSizeText(
                        experienceItem.client,
                        maxLines: 1,
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
                experienceItem.technology,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                experienceItem.jobType,
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
      position: TimelineItemPosition.right,
      isFirst: i == 0,
      isLast: i == experienceList.length,
      iconBackground: menuColors[i],
      icon: Icon(
        LineIcons.chevron_circle_down,
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
            menuColors[1][800],
            menuColors[1][400],
          ],
        ),
      ),
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
        child: Text(
          'Experience',
          style: TextStyle(
              fontSize: 45, color: Colors.white, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
