import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var checkC = false.obs;
  TextEditingController emailC = TextEditingController();

  @override
  void onClose() {
    emailC.dispose();
    super.onClose();
  }
}
