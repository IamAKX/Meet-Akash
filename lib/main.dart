import 'package:akash_giri/pages/Education.dart';
import 'package:akash_giri/pages/Projects.dart';
import 'package:akash_giri/pages/Skills.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

import 'constants/ColorRes.dart';
import 'pages/About_Me.dart';
import 'pages/Experience.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeContainer(),
    );
  }
}

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(title: 'Me', icon: LineIcons.male),
    TitledNavigationBarItem(title: 'Experience', icon: LineIcons.lightbulb_o),
    TitledNavigationBarItem(title: 'Education', icon: LineIcons.graduation_cap),
    TitledNavigationBarItem(title: 'Skills', icon: LineIcons.file_code_o),
    TitledNavigationBarItem(title: 'Project', icon: LineIcons.terminal)
  ];
  var _currentPage = 0;

  Future _setCurrentIndex(index) async {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getCurrentPage(_currentPage),
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index) => {_setCurrentIndex(index)},
        currentIndex: _currentPage,
        curve: Curves.easeInCubic,
        items: items,
        reverse: true,
        activeColor: menuColors[_currentPage],
        inactiveColor: Colors.blueGrey,
      ),
    );
  }

  _getCurrentPage(index) {
    switch (index) {
      case 0:
        return AboutMe();
      case 1:
        return Experience();
      case 2:
        return Education();
      case 3:
        return Skills();
      case 4:
        return Projects();
      default:
        return AboutMe();
    }
  }
}
