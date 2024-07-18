import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService extends GetxService {
  //GetxService là một class cha của GetxController, nó không cần phải có một widget để quản lý
  // có tác dụng giữa dữ liệu và các widget khác trong ứng dụng của bạn mà không cần phải làm việc với các widget
  AuthService();

  final _user = Rxn<User>();
  User? get user => _user.value;
  late final StreamSubscription<User?> _userSubscription;

  @override
  void onInit() {
    super.onInit();
    _userSubscription =
        FirebaseAuth.instance.userChanges().listen(_onUserChanged);
  }

  @override
  void onClose() {
    super.onClose();
    _userSubscription.cancel();
  }

  void _onUserChanged(User? user) {
    _user.value = user;
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      EasyLoading.show();

      // Trigger the Google Sign In process
      final googleUser = await GoogleSignIn().signIn();

      // Obtain the Google Sign In authentication object
      final googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Sign in to Firebase with the Google Auth credential
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      Get.snackbar('Thông báo', e.toString());
    } finally {
      EasyLoading.dismiss();
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
