import 'package:app/elements/contact.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,


        children: [

          ContactItem(fullname: "contact 1", email: "contact1@demo.com"),
          ContactItem(fullname: "contact 1", email: "contact1@demo.com"),
          ContactItem(fullname: "contact 1", email: "contact1@demo.com"),
          ContactItem(fullname: "contact 1", email: "contact1@demo.com"),
          ContactItem(fullname: "contact 1", email: "contact1@demo.com"),
          


        ],
      ),
      )
    );
  }
}