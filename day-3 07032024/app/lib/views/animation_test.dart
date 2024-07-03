import 'package:flutter/material.dart';

class AnimationTest extends StatefulWidget {
  const AnimationTest({super.key});

  @override
  State<AnimationTest> createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest> {

  double _ch = 100;
  double _cw = 100;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(

          onDoubleTap: (){
            // ...
            setState(() {
              _ch = _ch == 100 ? 200 : 100;
              _cw = _cw == 100 ? 200 : 100;
            });
          },


          child: AnimatedContainer(
            curve: Curves.bounceIn,
            duration: Duration(milliseconds: 500),
          height: _ch,
          width: _cw, 
          decoration: BoxDecoration(
            // cercil
            shape: BoxShape.circle,
            color: Colors.red
          ),

          child: Center(child: Text("BONJOUR"),)
        ),
        ),
      ),
    );
  }
}