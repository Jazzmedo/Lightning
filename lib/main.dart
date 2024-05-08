import 'package:flutter/material.dart';
import 'package:testii/ProfilePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Profile': (context) => ProfilePage()
      },
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
/*as*/ 