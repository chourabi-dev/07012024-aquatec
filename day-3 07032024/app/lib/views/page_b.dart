import 'package:flutter/material.dart';

class PageB extends StatefulWidget {
  final String msg;
  
  const PageB({super.key, required this.msg});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("MSG FROM PAGE A : ${widget.msg}")
      ),
    );
  }
}