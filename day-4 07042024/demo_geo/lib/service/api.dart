import 'dart:ffi';

import 'package:http/http.dart' as http;


class Api{


  Future<http.Response> getCurrentWeather( double lng, double lat ) async {
    
      var url =  Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lng&appid=177e9392b3ffa35310cc80ed5ed10e31&units=metric");

      // Await the http get response, then decode the json-formatted response.
      return http.get(url);
    


  }


}