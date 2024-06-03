import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:expensor/src/Data/network/firebase/firebase_services.dart';

import '../../common_widgets/icon_container.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => FirebaseServices.signInwWithGoogle(),
          child: const IconContainer(
              color: Colors.red,
              height: 45,
              widget: Icon(
                FontAwesomeIcons.google,
                size: 18,
                color: Colors.white,
              )
          ),
        ),
        const IconContainer(
            height: 45,
            widget: Icon(
              Icons.apple_rounded,
              color: Colors.white,
            )),
      ],
    );
  }
}
