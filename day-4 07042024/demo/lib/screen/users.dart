import 'dart:convert';

import 'package:demo/api/service.dart';
import 'package:demo/models/users.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {

  bool _loading = true;
  bool _error = false;
  List<Category> _users = [];



  getData(){
    Api api = new Api();

    api.fetchUSERS().then((res){
      var tmp = categoryFromJson(res.body);

      setState(() {
        _users = tmp;
        _loading =false;

      });
    }).catchError((err){
      print(err);

      setState(() {
        _loading = false;
        _error = true;
      });
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


        body: Center(
          child:  _loading == true ? CircularProgressIndicator() : Container(
            child: _error == true ? Text('Error network') : Container(
              child:  ListView.builder( itemCount: _users.length, itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_users[index].name),
                  subtitle: Text(_users[index].email ),

                ) ;
              },)
            )


          ),
        ),


    );
  }
}