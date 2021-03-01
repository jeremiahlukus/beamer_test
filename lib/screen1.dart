import 'package:beamer/beamer.dart';
import 'package:beamer_test/beam_locations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static final beamLocation =
      BeamPage(key: ValueKey('screen1'), child: Screen1());
  static final path = '/screen1';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Im Screen 1",
            style: TextStyle(fontSize: 40),
          ),
          TextButton(
              onPressed: () {
                Beamer.of(context).beamTo(
                    Screen2Location()); // this navigates but doesnt update the url
              },
              child: Text("button"))
        ],
      ),
    );
  }
}
