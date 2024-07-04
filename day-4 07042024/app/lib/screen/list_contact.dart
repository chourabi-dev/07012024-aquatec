import 'package:app/screen/add_contact.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class ListContactScreen extends StatefulWidget {
  const ListContactScreen({super.key});

  @override
  State<ListContactScreen> createState() => _ListContactScreenState();
}

class _ListContactScreenState extends State<ListContactScreen> {


  List<dynamic> _contacts = [];


  getData() async{
    var db = await openDatabase('contacts.db');
    List<Map> contacts = await db.rawQuery('SELECT * FROM Contacts');

    print(contacts);

    setState(() {
      _contacts = contacts;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return CreateContactScreen();
          },));
        },
      ),
      body: RefreshIndicator(
        
        onRefresh: () async {
          //await Future.delayed(Duration(seconds: 2));
          getData();
        },
        child: ListView.builder(itemCount: _contacts.length, itemBuilder : (context, index) {
          return ListTile(
            title: Text(_contacts[index]['name']),
            subtitle: Text(_contacts[index]['phone']),
          );
        },)
        )
    );
  }
}