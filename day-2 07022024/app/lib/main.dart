import 'package:app/views/bottom_navigation_expmle.dart';
import 'package:app/views/counter_app.dart';
import 'package:app/views/data_screen.dart';
import 'package:app/views/news.dart';
import 'package:app/views/todo_app.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
   
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TodoApp() // DemoBUttomNavigation() //DataScreen() // NewsScreen() //CounterApp()
    );
  }
}