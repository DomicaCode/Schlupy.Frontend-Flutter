import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class RegisterService {

  Future<String> register(String username, String password, String email) async{

    debugger();

    var body = jsonEncode(<String, String>{
      "username": username,
      "password": password,
      "email":email
    });
    print(body);

    var response =  await http.post(
      "http://api.domica.site/api/user/register",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      body: body
    );
    return response.body;
  }
}