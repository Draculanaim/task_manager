import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NetworkResponse {
  final int statusCode;
  final Map<String, dynamic>? responseData;
  final bool isSuccess;
  final String errorMessage;

  NetworkResponse(
      {required this.statusCode,
      required this.isSuccess,
      this.responseData,
      this.errorMessage= 'Something went wrong'});
}


class NetworkCaller {
  static Future<NetworkResponse> getRequest(
      {required String url, Map<String, dynamic>? params}) async {
    try{
      Uri uri = Uri.parse(url);
      print('URL => $url');
      Response response = await get(uri);
      print('Response Code => ${response.statusCode}');
      print('Response data => ${response.body}');
      if (response.statusCode == 200) {
        final decodeResponse = jsonDecode(response.body);
        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            responseData: decodeResponse);
      } else {
        return NetworkResponse(isSuccess: false, statusCode: response.statusCode);
      }
    }catch(e){
      return NetworkResponse(isSuccess: false, statusCode: -1,
        errorMessage: e.toString(),
      );
    }
  }
  static Future<NetworkResponse> postRequest(
      {required String url, Map<String, dynamic>? body}) async {
    try{
      Uri uri = Uri.parse(url);
      print('URL => $url');
      Response response = await post(uri,
          headers: {
        'content-type':'application/json'
          },
          body:jsonEncode(body));
      print('Response Code => ${response.statusCode}');
      print('Response data => ${response.body}');
      if (response.statusCode == 200) {
        final decodeResponse = jsonDecode(response.body);
        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            responseData: decodeResponse);
      } else {
        return NetworkResponse(isSuccess: false, statusCode: response.statusCode);
      }
    }catch(e){
      return NetworkResponse(isSuccess: false, statusCode: -1,
        errorMessage: e.toString(),
      );
    }
  }
}
