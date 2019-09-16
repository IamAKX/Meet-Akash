import 'package:akash_giri/constants/ColorRes.dart';
import 'package:akash_giri/constants/Constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:line_icons/line_icons.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/image/akash_profile.gif',
                    alignment: Alignment.topCenter,
                    width: width,
                    // height: height * 0.7,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      ABOUTME,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: height * 0.3,
              left: 10,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hello there!',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'I\'m ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'AKASH GIRI',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ',',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  //
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "A ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      RotateAnimatedTextKit(
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "Software",
                            "Website",
                            "Mobile",
                          ],
                          textStyle: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              // fontFamily: "Horizon",
                              color: Colors.black),
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                          ),
                      Text(
                        " developer",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "I'm ",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        calculateAge(),
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        " old",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "and reside in",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL(MAP_LINK);
                        },
                        child: Icon(
                          LineIcons.map_pin,
                          color: Colors.green[900],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL(MAP_LINK);
                        },
                        child: Text(
                          "Bangalore",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.green[900],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Wanna say Hi to me?",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () async {
                          await FlutterLaunch.launchWathsApp(
                              phone: PHONE_NUMBER,
                              message: "Hey Akash! Wassup?");
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            LineIcons.whatsapp,
                            color: WHATSAPP,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL(EMAIL_ADDRESS);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            LineIcons.envelope,
                            color: GOOGLE,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL(WEBSITE_PORTFOLIO_LINK);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            LineIcons.globe,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL(LINKDIN_LINK);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            LineIcons.linkedin,
                            color: LINKDIN,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL(GITHUB_LINK);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            LineIcons.github,
                            color: GITHUB,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Positioned(
            //   top: height * 0.71,
            //   child: SizedBox(
            //     width: width,
            //     child: Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: Text(
            //         ABOUTME,
            //         style: TextStyle(fontSize: 15),
            //         textAlign: TextAlign.justify,
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              top: 50,
              right: 10,
              child: OutlineButton.icon(
                color: Colors.transparent,
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                onPressed: () {
                  Share.share(
                      'Hey, Check out this new app that lets you know Akash better. Install it from the Store and endorse his skills : https://play.google.com/store/apps/details?id=com.akashapplications.akashgiri.akash_giri');
                },
                label: Text(''),
              ),
            )
          ],
        ),
      ),
    );
  }

  String calculateAge() {
    DateTime dob = DateTime.parse('1995-08-27');
    DateTime now = DateTime.now();
    String res = '';
    List<int> month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    int current_date = now.day;
    int current_month = now.month;
    int current_year = now.year;
    int birth_date = dob.day;
    int birth_month = dob.month;
    int birth_year = dob.year;

    if (birth_date > current_date) {
      current_month = current_month - 1;
      current_date = current_date + month[birth_month - 1];
    }

    if (birth_month > current_month) {
      current_year = current_year - 1;
      current_month = current_month + 12;
    }

    int calculated_date = current_date - birth_date;
    int calculated_month = current_month - birth_month;
    int calculated_year = current_year - birth_year;

    res = '${calculated_year}Y ${calculated_month}M ${calculated_date}D';
    return res;
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // throw 'Could not launch $url';
    }
  }
}
