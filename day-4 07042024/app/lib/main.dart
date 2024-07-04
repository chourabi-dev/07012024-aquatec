import 'package:app/screen/demo_widget.dart';
import 'package:app/screen/geolocator.dart';
import 'package:app/screen/list_contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GeoLocatorScreen() // ListContactScreen() // DemoWidget()
    );
  }
}
