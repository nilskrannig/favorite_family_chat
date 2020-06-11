import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nilskrannig/screens/chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'package:nilskrannig/utilities/constants.dart';
import 'package:nilskrannig/components/padded_rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;

  String email;
  String password;

  bool _showLoadingSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightPrimaryColor,
      body: ModalProgressHUD(
        color: kAccentColor,
        inAsyncCall: _showLoadingSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo_hero',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration:
                    kInputDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration:
                    kInputDecoration.copyWith(hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              PaddedRoundedButton(
                title: 'Log In',
                onPressed: () async {
                  setState(() {
                    _showLoadingSpinner = true;
                  });
                  try {
                    AuthResult authResult =
                        await _auth.signInWithEmailAndPassword(
                            email: email, password: password);

                    if (authResult.user != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }

                    setState(() {
                      _showLoadingSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
