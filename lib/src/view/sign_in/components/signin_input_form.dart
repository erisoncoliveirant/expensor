import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expensor/src/view_model/controller/signin_controller.dart';
import '../../sign_up/components/text_field.dart';

class SignInForm extends StatelessWidget {
   SignInForm({super.key});

   final controller=Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: const Text(
            "LOGIN",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF2661FA),
                fontSize: 36
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Obx(() => InputField(
          onTap: () => controller.onFocusEmail(),
          focus: controller.emailFocus.value,
          hint: "mail@gmail.com",
          controller: controller.email.value,
          correct: controller.correctEmail.value,
          onChange: controller.validateEmail,
        )),
        const SizedBox(
          height: 10,
        ),
        Obx(
              () => InputField(
            onTap: () => controller.onFocusPassword(),
            focus: controller.passwordFocus.value,
            hint: "Pick a strong password",
            controller: controller.password.value,
            hideText: controller.showPassword.value,
            onChange: () {
            },
            showPass: () => controller.showPassword.toggle(),
          ),
        ),
        // const SizedBox(
        //   height: 40,
        // ),
        // const Text(
        //   '  Email',
        //   style: TextStyle(
        //       color: Colors.white,
        //       fontWeight: FontWeight.w400,
        //       fontSize: 17),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Obx(() => InputField(
        //   onTap: () => controller.onFocusEmail(),
        //   focus: controller.emailFocus.value,
        //   hint: "tim@gmail.com",
        //   controller: controller.email.value,
        //   correct: controller.correctEmail.value,
        //   onChange: controller.validateEmail,
        // )),
        // const SizedBox(
        //   height: 20,
        // ),
        // const Text(
        //   '  Password',
        //   style: TextStyle(
        //       color: Colors.white,
        //       fontWeight: FontWeight.w400,
        //       fontSize: 17),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Obx(
        //       () => InputField(
        //     onTap: () => controller.onFocusPassword(),
        //     focus: controller.passwordFocus.value,
        //     hint: "Pick a strong password",
        //     controller: controller.password.value,
        //     hideText: controller.showPassword.value,
        //     onChange: () {
        //     },
        //     showPass: () => controller.showPassword.toggle(),
        //   ),
        // ),
        // const SizedBox(
        //   height: 40,
        // ),
      ],
    );
  }
}
