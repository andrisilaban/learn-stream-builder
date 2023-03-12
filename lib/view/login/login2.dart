import 'dart:developer';

import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Form Example'),
        ),
        body: LayoutBuilder(
          builder: (context, dimensions) {
            final width = dimensions.maxWidth / 1.5;
            final height = dimensions.maxHeight / 3;
            log('WIDTH $width HEIHT $height');
            return Center(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: height,
                    maxWidth: width,
                  ),
                  child: const LoginForm(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your username',
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter your password',
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
      ],
    );
  }
}
