import 'package:flutter/material.dart';

import 'location_detail.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(10.0),
          leading: _listItemImage(locations[index].imageUrl),
          title: _listItemTitle(locations[index].name),
          onTap: () => _navigateToLocationDetail(context, index),
        );
      },
    );
  }

  Widget _listItemImage(String imageUrl) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(
        imageUrl,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _listItemTitle(String name) {
    return Text(
      name,
      style: Style.textHeaderSummary,
    );
  }

  void _navigateToLocationDetail(BuildContext context, int index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LocationDetail(locations[index])));
  }
}
