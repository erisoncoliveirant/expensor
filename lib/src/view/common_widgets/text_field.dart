import 'package:expensor/src/view/common_widgets/textfield_suffix.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:expensor/src/view_model/controller/signin_controller.dart';
import 'package:expensor/src/view_model/controller/signup_controller.dart';

class InputField extends StatelessWidget {
  InputField({
    super.key,
    required this.onTap,
    required this.focus,
    required this.hint,
    required this.controller,
    this.correct,
    required this.onChange,
    this.hideText,
    this.showPass,
    this.color,
    this.inputType,
    this.fieldKey
  });

  final bool focus;
  final String hint;
  final TextEditingController controller;
  final VoidCallback onTap;
  final VoidCallback onChange;
  final VoidCallback? showPass;
  final bool? hideText;
  final bool? correct;
  final _signUpController = Get.put(SignupController());
  final _signInController = Get.put(SignInController());

  final Color? color;
  final TextInputType? inputType;
  final Key? fieldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(.35),
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        controller: controller,
        keyboardType: inputType,
        key: fieldKey,
        obscureText: hideText ?? false,
        onTap: onTap,
        onTapOutside: (event) {
          _signUpController.onTapOutside(context);
          _signInController.onTapOutside(context);
        },
        onChanged: (value) {
          onChange();
        },
        decoration: InputDecoration(
          filled: true,
          suffixIcon: hideText == null
              ? correct == true
                  ? const TextFieldSuffix( icon: Icons.done, color: Colors.black45)
                  : const SizedBox()
              : controller.value.text.toString().isNotEmpty
                  ? GestureDetector(
                      onTap: showPass,
                      child: TextFieldSuffix(
                          icon: hideText! ? Icons.visibility : Icons.visibility_off,
                          size: 18,
                          color: Colors.black45
                      ),
                    )
                  : const SizedBox(),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}
