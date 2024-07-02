import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {

  List<dynamic> _data = [
    
    { "title":"Achat pc", "date":"2024-07-01" },
    { "title":"Achat pc", "date":"2024-07-01" },
    { "title":"Achat pc", "date":"2024-07-01" },
    { "title":"Achat pc", "date":"2024-07-01" },
    { "title":"Achat pc", "date":"2024-07-01" },
    { "title":"Achat pc", "date":"2024-07-01" },
    { "title":"Achat pc", "date":"2024-07-01" },
    
  
  ];


  getData(){
    // API
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder( itemCount: _data.length, itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.history),
          title: Text(_data[index]["title"]),
          subtitle: Text( _data[index]["date"] ),

          trailing: IconButton(onPressed: (){
            setState(() {
              _data.removeAt(index);
            });
          },icon: Icon(Icons.delete,color: Colors.red,),),
        );
      },)
    );
  }
}