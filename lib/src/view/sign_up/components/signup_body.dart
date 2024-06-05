import 'package:expensor/src/common/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expensor/src/res/routes/routes.dart';
import 'package:expensor/src/view_model/controller/signup_controller.dart';
import 'package:expensor/src/view/sign_up/components/signup_options.dart';

import '../../common_widgets/appbar.dart';
import '../../common_widgets/button.dart';
import 'input_form.dart';

class SignupBody extends StatelessWidget {
  SignupBody({super.key});

  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputForm(),
              const SizedBox(height: 10,),
              Obx(() => AccountButton(
                  text: "Create Account",
                  loading: controller.loading.value,
                  onTap: controller.createAccount,
                ),
              ),
              const SizedBox(height: 10,),
              const SignUpOptions(),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(width: 5,),
                  GestureDetector(
                      onTap: () => Get.toNamed(Routes.signInScreen),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,),
                      )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
