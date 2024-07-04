import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget({super.key});

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {









  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Container(), //destination screen
   floatingActionButton: FloatingActionButton(
    onPressed: (){

    },
      //params
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   bottomNavigationBar: AnimatedBottomNavigationBar(
      icons: [
        Icons.home,
        Icons.search,
        Icons.ac_unit_rounded,
        Icons.ac_unit_rounded,
        
      ],
      activeIndex: 0,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (i){

      },
      //other params
   ),
);
  }
}