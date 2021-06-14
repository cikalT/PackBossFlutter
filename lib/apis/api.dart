export 'package:flutter/material.dart';
import 'package:packboss/models/index.dart';
export 'dart:convert';

class Api {
  ResultApi resultApi = new ResultApi()..status = false;
  String url;
  String msx;
  bool showFailMessage = true;

  var payload;
  String accessToken;
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  };

  printError(dynamic e) {
    resultApi.message = e.toString();
    print('Error Parsing API $runtimeType :$url');
    print('Error : ${e}');
  }
}
