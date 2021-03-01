import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'beam_locations.dart';
import 'screen3.dart';

class Screen2 extends StatelessWidget {
  static final path = '/screen2';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Im Screen 2",
            style: TextStyle(fontSize: 40),
          ),
          TextButton(
              onPressed: () {
                // Beamer.of(context).updateCurrentLocation(
                //     pathBlueprint:
                //         '/screen3');
                // this will update the current location which is Screen2Location
                // so its pages will be built.
                // if you don't believe me :), let's see:
                print(
                    'is it? ${Beamer.of(context).currentLocation is Screen2Location}');
                // you would use updateCurrentLocation if your locations
                // have more than 1 page.
                // so in your example where every location is with 1 page,
                // you must just beamTo
                Beamer.of(context).beamTo(Screen3Location('/screen3'));
                // or if you prefer
                //Beamer.of(context).beamTo(Screen3Location(Screen3.path));
              },
              child: Text("Button"))
        ],
      ),
    );
  }
}
