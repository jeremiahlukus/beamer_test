import 'package:beamer/beamer.dart';
import 'package:beamer_test/beam_locations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen2.dart';

class Screen1 extends StatelessWidget {
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
                // this would go to Screen2Location, but with path '/'
                // Beamer.of(context).beamTo(
                //     Screen2Location());
                //
                // So we need to specify what path we want in Screen2Location
                // because it can be something deeper like
                // /screen2/details/something/more
                // but still a part of Screen2Location if it had more pages
                //
                // I plan to simplify this by each location having basePath
                // that way you could do what you tried first
                // it will be in v0.8.0
                // but for now, this is the right way:
                Beamer.of(context).beamTo(Screen2Location(Screen2.path));
              },
              child: Text("button"))
        ],
      ),
    );
  }
}
