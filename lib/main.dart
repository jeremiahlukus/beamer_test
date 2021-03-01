import 'package:beamer/beamer.dart';
import 'package:beamer_test/beam_locations.dart';
import 'package:flutter/material.dart';

void main() => runApp(BeamerTest());

class BeamerTest extends StatelessWidget {
  final BeamLocation initialLocation = Screen1Location();

  final List<BeamLocation> beamLocations = [
    Screen1Location(),
    Screen2Location(),
    Screen3Location(),
    Screen4Location(),
  ];

  final notFoundPage = BeamPage(
    child: Scaffold(
      body: Center(
        child: Text(
          'Page Not found',
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: BeamerRouterDelegate(
        initialLocation: initialLocation,
        notFoundPage: notFoundPage,
        //guards: [authGuard],
      ),
      routeInformationParser: BeamerRouteInformationParser(
        beamLocations: beamLocations,
      ),
    );
  }
}
