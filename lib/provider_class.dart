import 'dart:convert' show json;
import 'dart:io';

import 'package:bigo_task/datamanager.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ProviderClass extends ChangeNotifier{
List<DataManager> dataManagerList=[];

Map<String, String>  headers = {
   'Content-Type': 'application/json',
   //"Accept": "application/json",

  'Authorization': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjQwNDE3OTcyLCJleHAiOjE2NDMwMDk5NzJ9.isxKdVLc_sVJa51s4jOvBQuF22VxYk2P3jscz45-HvI',
};

//Map<String, String> header = {'Bearer token':'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjQwNDE3OTcyLCJleHAiOjE2NDMwMDk5NzJ9.isxKdVLc_sVJa51s4jOvBQuF22VxYk2P3jscz45-HvI'};

setList() async{

try{

  print('header $headers');

  //var response= await http.post(Uri.parse('https://development-q5nzhaa-sb26hc2y3xm26.uk-1.platformsh.site/houses/'),headers:headers );
  http.Response response = await http.post(
    Uri.parse('https://development-q5nzhaa-sb26hc2y3xm26.uk-1.platformsh.site/houses'),headers: {HttpHeaders.authorizationHeader: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjQwNDE3OTcyLCJleHAiOjE2NDMwMDk5NzJ9.isxKdVLc_sVJa51s4jOvBQuF22VxYk2P3jscz45-HvI'});

var parsedJson = json.decode(response.body);

  print('response body ${response.body}');
  print('status code ${response.statusCode}');

print('response body ${parsedJson}');

}catch(e,st){
  print('catch error $e $st');
}




}

}