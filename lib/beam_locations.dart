import 'package:beamer/beamer.dart';
import 'package:beamer_test/screen1.dart';
import 'package:beamer_test/screen2.dart';
import 'package:beamer_test/screen3.dart';
import 'package:beamer_test/screen4.dart';
import 'package:flutter/material.dart';

class Screen1Location extends BeamLocation {
  @override
  List<String> get pathBlueprints => [Screen1.path];

  @override
  List<BeamPage> get pages => [
        BeamPage(
          key: ValueKey(Screen1.path),
          child: Screen1(),
        ),
      ];
}

class Screen2Location extends BeamLocation {
  // this is needed so we can pass the path into location when beaming
  // the plan is to add beamToNamed('...') where this will not be necessary.
  Screen2Location([String path]) : super(pathBlueprint: path);

  @override
  List<String> get pathBlueprints => [Screen2.path];

  @override
  List<BeamPage> get pages => [
        BeamPage(
          key: ValueKey(Screen2.path),
          child: Screen2(),
        ),
      ];
}

class Screen3Location extends BeamLocation {
  Screen3Location([String path]) : super(pathBlueprint: path);

  @override
  List<String> get pathBlueprints => [Screen3.path];

  @override
  List<BeamPage> get pages => [
        BeamPage(
          key: ValueKey(Screen3.path),
          child: Screen3(),
        ),
      ];
}

class Screen4Location extends BeamLocation {
  @override
  List<String> get pathBlueprints => [Screen4.path];

  @override
  List<BeamPage> get pages => [
        BeamPage(
          key: ValueKey(Screen4.path),
          child: Screen4(),
        ),
      ];
}
