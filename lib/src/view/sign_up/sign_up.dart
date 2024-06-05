import 'package:flutter/material.dart';
import 'package:expensor/src/view/sign_up/components/signup_body.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SignupBody()
        ],
      ),
    );
  }
}
