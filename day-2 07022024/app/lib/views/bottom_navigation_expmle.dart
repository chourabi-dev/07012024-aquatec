import 'package:app/views/data_screen.dart';
import 'package:app/views/news.dart';
import 'package:flutter/material.dart';

class DemoBUttomNavigation extends StatefulWidget {
  const DemoBUttomNavigation({super.key});

  @override
  State<DemoBUttomNavigation> createState() => _DemoBUttomNavigationState();
}

class _DemoBUttomNavigationState extends State<DemoBUttomNavigation> {

  int _currentIndex = 0;

  List<Widget> _tabs = [
    NewsScreen(),
    DataScreen()
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: _tabs.elementAt(_currentIndex),

        floatingActionButton: _currentIndex == 0 ?  FloatingActionButton(onPressed: (){},) : null,

        bottomNavigationBar: BottomNavigationBar(

          onTap: (int index){
            print(index);

            setState(() {
              _currentIndex = index;
            });
          },

          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home)
            ),

            BottomNavigationBarItem(
              label: "Data",
              icon: Icon(Icons.history)
            ),
            
          ],
        ),

    );
  }
}