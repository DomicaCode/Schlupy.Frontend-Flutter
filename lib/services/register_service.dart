import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterService {

  register(String username, String password, String email) async{

    var body = jsonEncode(<String, String>{
      "username": username,
      "password": password,
      "email":email
    });
    print(body);

    var response = await http.post(
      "http://api.domica.site/api/user/register",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      body: body
    );
    print(response.body);
  }
}