import 'dart:convert';

import 'package:demo_geo/models/weather_model.dart';
import 'package:demo_geo/service/api.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  final double lng;
  final double lat;
  
  const WeatherScreen({super.key, required this.lng, required this.lat});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  String tmp = 'Loading...';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeather();
  }


  getWeather(){
    Api api = new Api();

    api.getCurrentWeather(widget.lng, widget.lat).then((res){
       dynamic weather =  jsonDecode(res.body);   //weatherFromJson(res.body);

       print('TEMP : ${ weather['main']['temp'] }');
       setState(() {
         tmp = 'TEMP : ${ weather['main']['temp'] }';
       });


    }).catchError((err){
        print(err);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),

      )

      , 

      body: Column(
        children: [
          Text('$tmp',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}