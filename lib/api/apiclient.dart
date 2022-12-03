import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseClient {
  var client = http.Client();
  //  String url = 'reqres.in';
  // String url = 'jsonplaceholder.typicode.com';
  String url = 'dummyjson.com';

  Future<dynamic> get(String link) async {
    var response = await client.get(Uri.https(url, link));

    if (response.statusCode == 200) {
      var responseBody = response.body;
      var dataResponse = json.decode(responseBody);

      List listResponse = dataResponse['products'];

      // print(listResponse);
      return listResponse;

      // print(dataResponse);
      // return dataResponse;

      // print(data.toString());

    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<dynamic> post(String link) async {
    var response = await client.post(Uri.https(url, link),
    headers: {
       'Content-Type': 'application/json; charset=UTF-8',
    }
    );

    if (response.statusCode == 200) {
      var responseBody = response.body;
      var dataResponse = json.encode(responseBody);
      
      return dataResponse;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
