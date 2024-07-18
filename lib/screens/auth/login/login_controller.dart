import 'package:flutflix_tutorial/data/index.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailError = RxnString();
  final passwordError = RxnString();

  void onEmailChanged(String value) {
    emailError.value = null;
  }

  void onPasswordChanged(String value) {
    passwordError.value = null;
  }

  bool _validate(
    String email,
    String password,
  ) {
    emailError.value = null;
    passwordError.value = null;

    if (email.isEmpty) {
      emailError.value = 'Email is required';
    } else {
      final emailValid = GetUtils.isEmail(email);
      if (!emailValid) {
        emailError.value = 'Email is invalid';
      }
    }

    if (password.isEmpty) {
      passwordError.value = 'Password is required';
    }

    if (emailError.value != null || passwordError.value != null) {
      return false;
    }

    return true;
  }

  Future<void> login(
    String email,
    String password,
  ) async {
    if (!_validate(email, password)) {
      return;
    }

    try {
      EasyLoading.show();
      await Get.find<AuthService>().signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      EasyLoading.dismiss();
    }
  }
}
