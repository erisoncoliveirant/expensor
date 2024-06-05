import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../src/res/routes/routes.dart';

class SplashServices{
  static void checkLogin() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? uid = pref.getString('TOKEN');
    Timer(const Duration(milliseconds: 2000), () {
      if (uid == null) {
        Get.toNamed(Routes.signInScreen);
      } else {
        // Get.toNamed(Routes.homePage);
        Get.offAllNamed(Routes.homePage);
      }
    });
  }
}