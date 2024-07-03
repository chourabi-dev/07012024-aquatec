import 'package:app/views/tabs/tab_one.dart';
import 'package:app/views/tabs/tab_two.dart';
import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
            ]
          )
        ),
        body: TabBarView(
          children: [
            TabOne(),
            TabTwo()
            
          ]
        ),
      ),
    );
  }
}