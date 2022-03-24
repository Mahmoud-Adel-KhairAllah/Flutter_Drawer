import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drawerwidget.dart';

void main() {
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
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 112, 112),
      appBar: AppBar(
        backgroundColor: Color(0xFFB81C96),
        title: Text('Drawer'),
      ),
      drawer: Drawer(
          semanticLabel: "jjjj",
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
    );
  }
}
