import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    


    return Scaffold(
      body: Container(
        color: Colors.orange,
        width: width,
        height: height / 2,

        child: Column(
          children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container( height: 100, width: 100, color: Colors.red, ),
                  Container( height: 100, width: 100, color: Colors.red, ),
                  Container( height: 100, width: 100, color: Colors.red, ),
                  
                  
                ],
              )

          ],
        ),
      ),
    );
  }
}