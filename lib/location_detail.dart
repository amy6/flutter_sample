import 'package:flutter/material.dart';
import 'package:flutter_sample/styles.dart';

import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            location.name,
            style: Style.navBarTitle,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _widgetList(location),
        ));
  }

  List<Widget> _widgetList(Location location) {
    var widgetList = List<Widget>();
    widgetList.add(_bannerImage(location.imageUrl, 300.0));
    widgetList.addAll(_locationWidgets(location));
    return widgetList;
  }

  List<Widget> _locationWidgets(Location location) {
    var widgetList = List<Widget>();
    for (int i = 0; i < location.facts.length; i++) {
      widgetList.add(_getTitleWidget(location.facts[i].title));
      widgetList.add(_getTextWidget(location.facts[i].text));
    }
    return widgetList;
  }

  Widget _bannerImage(String url, double height) {
    return Container(
        constraints: BoxConstraints.tightFor(height: height),
        child: Image.network(
          url,
          fit: BoxFit.fitWidth,
        ));
  }

  Widget _getTitleWidget(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 10.0),
      child: Text(
        title,
        style: Style.textHeaderTitle,
      ),
    );
  }

  Widget _getTextWidget(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Text(
          text,
          style: Style.textHeaderSummary,
        ));
  }
}
