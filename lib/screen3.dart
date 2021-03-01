import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';

class Screen3 extends StatelessWidget {
  static final beamLocation =
      BeamPage(key: ValueKey('screen3'), child: Screen3());
  static final path = '/screen3';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Im Screen 3",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
