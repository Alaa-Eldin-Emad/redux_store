import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API{
  Future<dynamic> getData({required String url})async{
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      return jsonDecode(response.body);
    }
    else{
      throw Exception('there is a problem with status code ${response.statusCode}');
    }
  }
  Future<dynamic> postData({required String url, @required dynamic body, @required String? token})async{
    Map<String,String> headers ={};
    if(token!=null){
      headers.addAll({
        'Authorization' : 'Bearer $token'
      }
      );
    }
    http.Response response = await http.post(Uri.parse(url),
    body: body,
    headers: headers);
    if(response.statusCode==200){
      Map<String,dynamic> data = jsonDecode(response.body);
      return data;
    }
    else{
      throw Exception('there is a problem with status code ${response.statusCode}');
    }
  }
  Future<dynamic> putProducts({required String url, @required dynamic body, @required String? token})async{
     Map<String,String> headers ={};
     headers.addAll({
        'Content-Type' : 'application/x-www-form-urlencoded'
      }
      );
         if(token!=null){
      headers.addAll({
        'Authorization' : 'Bearer $token'
      }
      );
    }
    http.Response response = await http.put(Uri.parse(url),
    body : body,
    headers : headers
);
    if(response.statusCode==200){
      Map<String,dynamic> data = jsonDecode(response.body);
      return data;
    }
    else{
      throw Exception('there is a problem with status code ${response.statusCode}');
    }
  }
}