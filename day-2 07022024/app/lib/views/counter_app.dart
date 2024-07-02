import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {


  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        actions: [
          IconButton(onPressed: (){
            
            setState(() {
              _counter= _counter+1;  
            });

            print(_counter);
          }, icon: Icon(Icons.add))
          
        ],
      ),


      body: Center(
        child: Text('$_counter clicks'),
      ),
    );
  }
}