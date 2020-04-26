import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:schlupyfrontend/api/api_base_helper.dart';

class RegisterService {

  Future<String> register(String username, String password, String email) async{

    var _helper = ApiBaseHelper();

    var body = jsonEncode(<String, String>{
      "username": username,
      "password": password,
      "email":email
    });

    final response = await _helper.post("http://api.domica.site/api/user/register",body);

    return response.toString();
  }
}