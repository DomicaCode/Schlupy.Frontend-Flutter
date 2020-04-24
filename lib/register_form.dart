import 'package:flutter/material.dart';
import 'services/register_service.dart';

class RegisterForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm>{

  String _username;
  String _email;
  String _password;

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

Widget _buildUsername(){
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Username'
    ),
    validator: (String value){
      if(value.isEmpty){
        return "Username is required";
      }
    },
    onSaved: (String value){
      _username = value;
    }
  );
}
Widget _buildEmail(){
  return TextFormField(
      decoration: InputDecoration(
          labelText: 'Email'
      ),
      validator: (String value){
        if(value.isEmpty){
          return "Email is required";
        }
      },
      onSaved: (String value){
        _email = value;
      }
  );
}
Widget _buildPassword(){
  return TextFormField(
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
        labelText: 'Password'
    ),
    validator: (String value){
      if(value.isEmpty){
        return "Password is required";
      }
    },
    onSaved: (String value){
      _password = value;
    }
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(key: _formKey, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            _buildUsername(),
            _buildEmail(),
            _buildPassword(),
            SizedBox(height:25),
            RaisedButton(
              child:Text("Submit", style:TextStyle(
                color:Colors.blue, fontSize: 16
                ),
              ),
              onPressed: () async  {
                if(!_formKey.currentState.validate()){
                  return;
                }
                _formKey.currentState.save();

                var registerService = new RegisterService();

                await registerService.register(_username, _password, _email);
                print(_username);
              },
            )
          ],
        ),),
      ),
    );
  }

  signIn(String username, String password){

  }
}
