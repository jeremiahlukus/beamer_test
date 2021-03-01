import 'package:flutter/cupertino.dart';

class Screen4 extends StatelessWidget {
  static final path = '/screen4';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Im Screen 4",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
