import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:petro_project/model/user.dart';
import '../model/homemodel.dart';

class Api {
  var isDataLoading = false.obs;

  Homemodel? audit;

  var data = ''.obs;

  Future<User> postLogin(String title) async {
    final http.Response response = await http.post(
      Uri.parse(
          'https://www.petroinfotech.com/PetroHSE/api/Admin/ValidateLogin'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    if (response.statusCode == 201) {
      print(response);
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Album loading failed!');
    }
  }

  Future<List<Homemodel>> getHome() async {
    final response = await http.get(
      Uri.parse(
          'https://www.petroinfotech.com/PetroHSE/api/Dashboard/GetHomePage?companyCode=1&userId=610'),
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      if (jsonData is List) {
        final List<Homemodel> dataass = jsonData
            .map<Homemodel>((data) => Homemodel.fromJson(data))
            .toList();
        return dataass;
      } else {
        throw Exception('Data format is not as expected.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
