import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static final beamLocation =
      BeamPage(key: ValueKey('screen2'), child: Screen2());
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
                Beamer.of(context).updateCurrentLocation(
                    pathBlueprint:
                        '/screen3'); // updates the path but doesnt navigate
              },
              child: Text("Button"))
        ],
      ),
    );
  }
}
