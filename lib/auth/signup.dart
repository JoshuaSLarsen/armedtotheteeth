import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import './signin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends State <SignUp> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF244A26),
        title: Text('Sign In',
        style: TextStyle(
            fontStyle: FontStyle.italic, 
            color: Colors.black.withOpacity(1.0),
            fontFamily: 'Papyrus',
            fontSize: 30,
            fontWeight: FontWeight.w800
            ),
        )
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if(input.isEmpty){
                    return 'Please type an email';
                  }
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
              ),
              TextFormField(
                validator: (input) {
                  if(input.length < 6){
                    return 'Your password needs to be atleast 6 characters long';
                  }
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(
                  labelText: 'Password'
                ),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: signIn,
                child: Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        final FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password)).user;
        // TODO send email to verify.
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
      }catch(e){
        print(e.message);
      }
    }
  }
}