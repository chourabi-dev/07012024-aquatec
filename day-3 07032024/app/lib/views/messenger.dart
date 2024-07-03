import 'package:app/elements/connected_user.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: h,
        child: Column(

          children: [
             // users
            Container(
              //color: Colors.red,
              height: 150,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ConnectedUser( connected: true, ),
                  ConnectedUser( connected: true, ),
                  ConnectedUser( connected: false, ),
                  
                  
                ],
              ),
            ),



          // chat
          Container(
              color: Colors.yellow,
              height: h - 150,
            )
          ],

        ),
      ),
    );
  }
}