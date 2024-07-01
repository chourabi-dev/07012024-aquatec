import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {

  final String fullname;
  final String email;



  const ContactItem({super.key, required this.fullname, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.red,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.only(left: 15, right: 15),

      child: Column(
        children: [
          Text(fullname, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold ),),
          SizedBox(height: 15,),
          Text(email),


          
        ],
      ),
    );
  }
}