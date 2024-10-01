import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:islamiapp/core/models/radio_model.dart';
class ApiManager{
  static Future<RadioModel> getRadio()async{
    Response response=await http.get(Uri.parse('https://mp3quran.net/api/v3/radios'));
   var data= jsonDecode(response.body);
   return RadioModel.fromJson(data);
  }
}