import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {


  List<String>  todos = [];

  TextEditingController _inputController = new TextEditingController();



  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    

    return Scaffold(
      body: Container(
        child: Column(
          children: [

              Container(
                height: h * 0.9, 
                child: ListView.builder(itemCount: todos.length, itemBuilder: (context, index) {
                  return ListTile(
                    title: Text( todos[index] ),
                  );
                },)
              ),



              Container(
                height: h * 0.1, 
                child: Row(
                  children: [
                      Container(
                        width: w * 0.8,
                        child: TextField(
                          controller: _inputController,
                        ),
                      ),
                      Container(
                        width: w * 0.2,
                        child: IconButton( icon: Icon(Icons.send), onPressed: (){

                          if (_inputController.text != '') {
                            setState(() {
                            todos.add(_inputController.text);
                          });

                          // reset !!
                          _inputController.text="";
                          }

                        },),
                      ),
                      
                  ],
                ),
              ),
              


          ],
        ),
      ),
    );
  }
}