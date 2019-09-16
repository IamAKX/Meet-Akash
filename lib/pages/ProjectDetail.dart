import 'package:akash_giri/model/Projects_model.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetail extends StatelessWidget {
  ProjectModel project;

  ProjectDetail(ProjectModel project) {
    this.project = project;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    String features = "";
    for (String f in project.features) features += "- $f\n";

    features = features.trim();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Card(
                elevation: 5,
                margin: EdgeInsets.all(0),
                child: Hero(
                    tag: project.name.replaceAll(' ', '') +
                        project.date.replaceAll(' ', ''),
                    child: titleHeader(width))),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10,
                    color: Colors.red,
                    height: 30,
                  ),
                  Container(
                    width: width - 30,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'DESCRIPTION',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                child: Text(
                  project.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10,
                    color: Colors.blue,
                    height: 30,
                  ),
                  Container(
                    width: width - 30,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'DATE OF INITIATION',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                child: Text(
                  project.date,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10,
                    color: Colors.green,
                    height: 30,
                  ),
                  Container(
                    width: width - 30,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'PLATFORM SUPPORTED',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                child: Text(
                  project.platform,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10,
                    color: Colors.purple,
                    height: 30,
                  ),
                  Container(
                    width: width - 30,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'KEY FEATURES',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                child: Text(
                  features,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10,
                    color: Colors.amber,
                    height: 30,
                  ),
                  Container(
                    width: width - 30,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'TECHNOLOGY USED',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                children: getTechnologyChips(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            (project.link == '')
                ? Container()
                : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: OutlineButton(
                      child: Text(
                        'Visit Project Link',
                        style: TextStyle(
                            color: project.color,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      color: project.color,
                      onPressed: _launchURL,
                      textColor: Colors.white,
                      disabledBorderColor: project.color,
                      disabledTextColor: project.color,
                      splashColor: project.color,
                      highlightedBorderColor: project.color,
                    ),
                  ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getTechnologyChips() {
    List<Widget> techChip = [];
    for (String t in project.technologies) {
      Color c = RandomColor().randomColor(
        colorSaturation: ColorSaturation.lowSaturation,
      );
      techChip.add(
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Text(
              t,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      );
    }
    return techChip;
  }

  Container titleHeader(double width) {
    return Container(
      height: 150,
      alignment: Alignment.bottomLeft,
      color: project.color,
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
        child: Text(
          project.name,
          style: TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }

  _launchURL() async {
    String url = project.link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // throw 'Could not launch $url';
    }
  }
}
