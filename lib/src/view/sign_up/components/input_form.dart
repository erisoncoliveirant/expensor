
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../view_model/controller/signup_controller.dart';
import '../../common_widgets/text_field.dart';

class InputForm extends StatelessWidget {
   InputForm({super.key});

  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: const Text(
            "SING UP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF2661FA),
              fontSize: 36,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 30,),
        Obx(() => InputField(
          onTap: () => controller.onFocusName(),
          focus: controller.nameFocus.value,
          hint: "Enter Your Name",
          controller: controller.name.value,
          correct: controller.correctName.value,
          onChange: controller.validateName,
        )),
        const SizedBox(
          height: 10,
        ),
        Obx(() => InputField(
          onTap: () => controller.onFocusEmail(),
          focus: controller.emailFocus.value,
          hint: "tim@gmail.com",
          controller: controller.email.value,
          correct: controller.correctEmail.value,
          onChange: controller.validateEmail,
        )),
        const SizedBox(
          height: 10,
        ),
        Obx(() => InputField(
          onTap: () => controller.onFocusPassword(),
          focus: controller.passwordFocus.value,
          hint: "Pick a strong password",
          controller: controller.password.value,
          hideText: controller.showPassword.value,
          onChange: () {},
          showPass: () => controller.showPassword.toggle(),
        )),
      ],
    );
  }
}
