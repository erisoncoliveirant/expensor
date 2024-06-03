import 'package:expensor/src/common/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expensor/src/res/routes/routes.dart';
import 'package:expensor/src/view_model/controller/signin_controller.dart';
import 'package:expensor/src/view/sign_in/components/signin_input_form.dart';
import '../../sign_up/components/button.dart';
import '../../sign_up/components/signup_options.dart';

class SignInBody extends StatelessWidget {
  SignInBody({super.key});
  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInForm(),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(() => AccountButton(
                        text: "Login Account",
                        loading: controller.loading.value,
                        onTap: controller.loginAccount,
                      ),
                    ),
                    const SizedBox( height: 10, ),
                    const SignUpOptions(),
                    const SizedBox( height: 20, ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        const SizedBox(width: 5,  ),
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.signUpScreen),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        )
                      ],
                    ),
                  ],
                )
            )
        )
    );
  }
}
