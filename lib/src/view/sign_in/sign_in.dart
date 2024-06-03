import 'package:flutter/material.dart';
import 'package:expensor/src/view/sign_in/components/signin_body.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          SignInBody()
        ],
      )
    );
  }
}
