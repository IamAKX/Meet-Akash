import 'package:akash_giri/model/Projects_model.dart';
import 'package:akash_giri/pages/ProjectDetail.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:random_color/random_color.dart';

class ProjectCell extends StatefulWidget {
  ProjectModel project;
  ProjectCell(ProjectModel project) {
    this.project = project;
  }

  @override
  _ProjectCellState createState() => _ProjectCellState();
}

class _ProjectCellState extends State<ProjectCell> {
  Size _cellSize = Size(0, 0);
  GlobalKey _cellSizeKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_onBuildCompleted);
  }

  _onBuildCompleted(_) {
    _getSize();
  }

  @override
  Widget build(BuildContext context) {
    widget.project.color = RandomColor().randomColor(
      colorSaturation: ColorSaturation.lowSaturation,
    );
    return Container(
      color: Colors.transparent,
      child: Container(
        key: _cellSizeKey,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              child: Container(
                color: widget.project.color,
                padding: EdgeInsets.all(5),
                height: (_cellSize.height / 2).toDouble(),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: AutoSizeText(
                  widget.project.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              tag: widget.project.name.replaceAll(' ', '') +
                  widget.project.date.replaceAll(' ', ''),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: _getPlatformIcons(widget.project)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProjectDetail(widget.project),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Text(
                      'View Detail',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(LineIcons.arrow_right)
                  ],
                ),
              ),
            )
          ],
        ),
        decoration: new BoxDecoration(
            border: new Border.all(color: Colors.grey), color: Colors.white),
      ),
    );
  }

  _getSize() {
    final RenderBox renderBox = _cellSizeKey.currentContext.findRenderObject();
    var size = renderBox.size;
    setState(() {
      _cellSize = size;
    });
  }

  List<Widget> _getPlatformIcons(ProjectModel p) {
    List platforms = p.platform.split(',');
    List<Widget> iconList = [];
    iconList.add(
      Text(
        widget.project.date,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
    iconList.add(Spacer());
    for (String i in platforms) {
      if (i.trim().toLowerCase() == 'android')
        iconList.add(Icon(LineIcons.android, color: Colors.green));
      else if (i.trim().toLowerCase() == 'windows')
        iconList.add(Icon(LineIcons.windows, color: Colors.cyan));
      else if (i.trim().toLowerCase() == 'website')
        iconList.add(Icon(LineIcons.globe, color: Colors.indigoAccent));
      else if (i.trim().toLowerCase() == 'arduino')
        iconList.add(Icon(LineIcons.sellsy, color: Colors.brown));
      else if (i.trim().toLowerCase() == 'mac' ||
          i.trim().toLowerCase() == 'ios')
        iconList.add(Icon(LineIcons.apple, color: Colors.black));
      else if (i.trim().toLowerCase() == 'linux')
        iconList.add(Icon(LineIcons.linux, color: Colors.red));
      else
        iconList.add(Icon(LineIcons.question, color: Colors.blueGrey));
    }
    return iconList;
  }
}
