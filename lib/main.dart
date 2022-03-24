// ignore_for_file: use_key_in_widget_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drawerwidget.dart';

void main() {
  // ignore: unused_local_variable

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final oriantation = MediaQuery.of(context).orientation;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 112, 112),
      appBar: AppBar(
        backgroundColor: Color(0xFFB81C96),
        title: Text('Drawer'),
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(104, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                DrawerWidget(
                  title: "FIRST ELEMENT",
                ),
                DrawerWidget(
                  title: "SECOND ELEMENT",
                ),
                DrawerWidget(
                  title: "THIRD ELEMENT",
                ),
                DrawerWidget(
                  title: "FORTH ELEMENT",
                ),
                DrawerWidget(
                  title: "FIFTHE ELEMENT",
                ),
              ],
            ),
          )),
      body: oriantation == Orientation.landscape
          ? MyLand()
          : Center(
              child: Text("hellowor1d"),
            ),
    );
  }
}

class MyLand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200,
          width: 200,
          child: ListView(
            children: [
              DrawerWidget(
                title: "FIRST ELEMENT",
              ),
              DrawerWidget(
                title: "SECOND ELEMENT",
              ),
              DrawerWidget(
                title: "THIRD ELEMENT",
              ),
              DrawerWidget(
                title: "FORTH ELEMENT",
              ),
              DrawerWidget(
                title: "FIFTHE ELEMENT",
              ),
            ],
          ),
        )
      ],
    );
  }
}
