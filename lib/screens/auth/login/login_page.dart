import 'package:flutflix_tutorial/data/index.dart';
import 'package:flutflix_tutorial/screens/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late final LoginController _controller;

  @override
  void initState() {
    _controller = Get.put(LoginController());
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<LoginController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLogo(),
            const SizedBox(height: 32),
            _buildEmailPasswordSignIn(),
            const SizedBox(height: 16),
            _buildSignUpButton(context),
            const SizedBox(height: 32),
            const Text('Or'),
            const SizedBox(height: 8),
            _buildGoogleSignInButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/flutflix.png',
          height: 80,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ],
    );
  }

  Widget _buildEmailPasswordSignIn() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Obx(() {
        return Column(
          children: [
            TextField(
              controller: _emailController,
              onChanged: _controller.onEmailChanged,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                errorText: _controller.emailError.value,
              ),
            ),
            TextField(
              controller: _passwordController,
              onChanged: _controller.onPasswordChanged,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                errorText: _controller.passwordError.value,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _controller.login(
                _emailController.text,
                _passwordController.text,
              ),
              child: const Text('Sign in'),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        ));
      },
      child: const Text("Don't have an account? Sign up"),
    );
  }

  Widget _buildGoogleSignInButton() {
    return ElevatedButton.icon(
      onPressed: () {
        Get.find<AuthService>().signInWithGoogle();
      },
      icon: Image.asset(
        'assets/imgageGG.png',
        height: 24,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
      label: const Text('Sign in with Google'),
    );
  }
}
