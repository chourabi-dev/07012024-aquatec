import 'package:app/views/page_b.dart';
import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("send hello msg to page b"),
          onPressed: (){
            // ...

            Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
              return PageB(  msg: "hello from page A", );
            },));

          },
        ),
      ),
    );
  }
}