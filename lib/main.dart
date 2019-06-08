import 'package:flutter/material.dart';
import 'package:flutter_sample/models/location.dart';

import 'location_list.dart';
import 'models/mock_location.dart';
import 'styles.dart';

void main() {
  List<Location> locations = MockLocation.FetchAll();

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Locations',
          style: Style.navBarTitle,
        ),
      ),
      body: LocationList(locations),
    ),
  ));
}
