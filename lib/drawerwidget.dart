import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  String title;

  DrawerWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          height: 1,
          fontSize: 18,
          wordSpacing: 2,
          decorationStyle: TextDecorationStyle.wavy,
        ),
      ),
    ));
  }
}
