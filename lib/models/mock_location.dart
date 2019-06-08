import 'package:flutter_sample/models/location_fact.dart';

import 'location.dart';

class MockLocation extends Location {
  MockLocation(String name, String imageUrl, List<LocationFact> facts)
      : super(name, imageUrl, facts);

  static final List<Location> _locationItems = [
    Location(
        "Mountain View",
        "https://cdn-images-1.medium.com/max/2600/1*Yd2JS7Jo7W6DHf6VBmGnIg.jpeg",
        <LocationFact>[
          LocationFact("Title", "Here's the title"),
          LocationFact("Summary", "Here's the summary"),
        ]),
    Location(
        "Mountain View",
        "https://cdn-images-1.medium.com/max/2600/1*Yd2JS7Jo7W6DHf6VBmGnIg.jpeg",
        <LocationFact>[
          LocationFact("Title", "Here's the title"),
          LocationFact("Summary", "Here's the summary"),
        ]),
    Location(
        "Mountain View",
        "https://cdn-images-1.medium.com/max/2600/1*Yd2JS7Jo7W6DHf6VBmGnIg.jpeg",
        <LocationFact>[
          LocationFact("Title", "Here's the title"),
          LocationFact("Summary", "Here's the summary"),
        ]),
    Location(
        "Mountain View",
        "https://cdn-images-1.medium.com/max/2600/1*Yd2JS7Jo7W6DHf6VBmGnIg.jpeg",
        <LocationFact>[
          LocationFact("Title", "Here's the title"),
          LocationFact("Summary", "Here's the summary"),
        ]),
    Location(
        "Mountain View",
        "https://cdn-images-1.medium.com/max/2600/1*Yd2JS7Jo7W6DHf6VBmGnIg.jpeg",
        <LocationFact>[
          LocationFact("Title", "Here's the title"),
          LocationFact("Summary", "Here's the summary"),
        ])
  ];

  static Location FetchAny() {
    return _locationItems[0];
  }

  static List<Location> FetchAll() {
    return _locationItems;
  }
}
