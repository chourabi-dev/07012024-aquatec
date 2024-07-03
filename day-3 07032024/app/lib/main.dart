import 'package:app/views/album_details.dart';
import 'package:app/views/animation_test.dart';
import 'package:app/views/demo_screen.dart';
import 'package:app/views/hero_animation.dart';
import 'package:app/views/messenger.dart';
import 'package:app/views/page_a.dart';
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
      home: PageA() // DemoHeroAnimation() //AnimationTest() // MessengerScreen()//DemoScreen()
    );
  }
}
