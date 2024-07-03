import 'package:flutter/material.dart';

class ConnectedUser extends StatelessWidget {
  final bool connected;
  
  const ConnectedUser({super.key, required this.connected});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only( right: 15 ),
      
      width: 150,

      child: Stack(
        clipBehavior: Clip.none,
        children: [

          Container(
            width: 150,
            height: 150,
            child: CircleAvatar(
            backgroundImage: NetworkImage("https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png"),
          ),

          ),

          Positioned(
            top: 20,
            right: -3,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color:  connected ?  Colors.green : Colors.grey,
              borderRadius: BorderRadius.circular(50)
          ),
          )
        )

        

        ],
      )

    );

  }
}