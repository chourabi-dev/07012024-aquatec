import 'package:http/http.dart' as http;


class Api{
  // HTTP

    Future<http.Response> fetchUSERS() async { 
    var url = Uri.https('jsonplaceholder.typicode.com', '/users', {}); 
    return http.get(url);
  }
}