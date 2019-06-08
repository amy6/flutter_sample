import 'location_fact.dart';

class Location {
  final String name;
  final String imageUrl;
  final List<LocationFact> facts;
  Location(this.name, this.imageUrl, this.facts);
}