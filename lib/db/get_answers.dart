import 'package:firstdb/models/answers_api.dart';
import 'package:http/http.dart' as http;

Future<List<Answer1>> fetchAnswer1() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer1.php';
  final response = await http.get(url);
  return answer1FromJson(response.body);
}

Future<List<Answer2>> fetchAnswer2() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer2.php';
  final response = await http.get(url);
  return answer2FromJson(response.body);
}

Future<List<Answer3>> fetchAnswer3() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer3.php';
  final response = await http.get(url);
  return answer3FromJson(response.body);
}

Future<List<Answer4>> fetchAnswer4() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer4.php';
  final response = await http.get(url);
  return answer4FromJson(response.body);
}

Future<List<Answer5>> fetchAnswer5() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer5.php';
  final response = await http.get(url);
  return answer5FromJson(response.body);
}

Future<List<Answer6>> fetchAnswer6() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer6.php';
  final response = await http.get(url);
  return answer6FromJson(response.body);
}

Future<List<Answer7>> fetchAnswer7() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer7.php';
  final response = await http.get(url);
  return answer7FromJson(response.body);
}

Future<List<Answer8>> fetchAnswer8() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer8.php';
  final response = await http.get(url);
  return answer8FromJson(response.body);
}

Future<List<Answer9>> fetchAnswer9() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer9.php';
  final response = await http.get(url);
  return answer9FromJson(response.body);
}

Future<List<Answer10>> fetchAnswer10() async {
  String url = 'https://dbserverproject.000webhostapp.com/answers/answer10.php';
  final response = await http.get(url);
  return answer10FromJson(response.body);
}