import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  //Handle URL
  // var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');

  //Handle the response package
  // var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  // var response = await http.get(url);

  //Use the response content
  // print('Response status: ${response.statusCode}');
  // print('Response body: \n\n${response.body}');

  //print(await http.read(Uri.https('example.com', 'foobar.txt')));

  //print(jsonDecode(response.body)['name']);

  // Map<String, dynamic> map = jsonDecode(response.body);
  //Now map holds the decoded content.

  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');

  // try{
  //   var response = await http.get(url);
  //   Map<String, dynamic> map = jsonDecode(response.body);
  //   //print(map["name"]);
  //   print(map);
  // }catch(e){
  //   print("It didn't work");
  // }

  http
      .get(url)
      .then((value) => print(jsonDecode(value.body)["name"]))
      .catchError((err) => print(err));


}
