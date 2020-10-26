import 'dart:convert';

import 'package:firstdb/models/detal_api.dart';
import 'package:firstdb/models/reestr_api.dart';
import 'package:http/http.dart' as http;

Future<List<Detal>> fetchDetals() async {
  String url = 'https://dbserverproject.000webhostapp.com/get_detal.php';
  final response = await http.get(url);
  return detalFromJson(response.body);
}

Future<List<Reestr>> fetchReestr() async {
  String url = 'https://dbserverproject.000webhostapp.com/get_reestr.php';
  final response = await http.get(url);
  return reestrFromJson(response.body);
}

Future fetchKodDetals() async {
  String url = '';
  var response = await http.get(url, headers: {"Accept":"application/json"});
  var jsonBody = response.body;
  var jsonData = json.decode(jsonBody);
  return jsonData;
}