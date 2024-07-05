import 'dart:convert';

import 'package:app/screens/blue_test.dart';
import 'package:flutter/material.dart'; 

import 'package:flutter_blue/flutter_blue.dart'; 

  

void main() => runApp(MyApp()); 

  

class MyApp extends StatelessWidget { 

  @override 

  Widget build(BuildContext context) { 

    return MaterialApp( 

      home: ScanPage(), 

    ); 

  } 

} 

  