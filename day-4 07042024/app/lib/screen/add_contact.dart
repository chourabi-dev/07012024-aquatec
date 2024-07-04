import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class CreateContactScreen extends StatefulWidget {
  const CreateContactScreen({super.key});

  @override
  State<CreateContactScreen> createState() => _CreateContactScreenState();
}

class _CreateContactScreenState extends State<CreateContactScreen> {

  String _errorMSG = '';

  TextEditingController _name = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  


  createContact() async{
    String name = _name.text;
    String phone = _phone.text;


    if( name!= '' && phone!=''  ){
      setState(() {
        _errorMSG = '';
      });
      // insert 

      // open the database
    var db = await openDatabase('contacts.db');
    await db.execute( 'CREATE TABLE IF NOT EXISTS Contacts (id INTEGER PRIMARY KEY, name TEXT, phone TEXT)');

    // INSERT !!
    await db.transaction((txn) async {
  int id1 = await txn.rawInsert(
      'INSERT INTO Contacts(name, phone) VALUES("${name}", "${phone}")');
  print('inserted1: $id1');
  
});


    }else{
      // alert !!!
      setState(() {
        _errorMSG = 'Please fill all the fields';
      });
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create new contact"),
      ),

      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [


              TextField(
                controller: _name,
                decoration: InputDecoration(
                  hintText: "Name",
                )
              ),
              SizedBox(height: 15,),
              TextField(
                controller: _phone,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                )
              ),
              SizedBox(height: 15,),
              
              Container(
                width: MediaQuery.of(context).size.width-30,
                child: ElevatedButton(onPressed: (){


                    createContact();



                }, child: Text('Create contact'))
,
              ),
              SizedBox(height: 15,),


             
             
              _errorMSG != '' ?
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red.shade200,
                ),
                width: MediaQuery.of(context).size.width-30,
                child: Text(_errorMSG, style: TextStyle(color: Colors.white),),
              ): Container()


          ],
        ),
      ),
    );
  }
}