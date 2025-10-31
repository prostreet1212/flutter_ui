

import 'package:flutter/material.dart';
import 'package:food_order_ui/pages/login_page/widgets/forgot_password.dart';
import 'package:food_order_ui/pages/login_page/widgets/login_button.dart';
import 'package:food_order_ui/pages/login_page/widgets/logo.dart';
import 'package:food_order_ui/pages/login_page/widgets/text_field.dart';
import 'package:food_order_ui/pages/login_page/widgets/text_signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoImage(),
                LoginTextField(),
                ForgotPassword(),
                LoginButonColor(),
                TextSignUp(),
              ],
            ),
          ),
        )
    );
  }
}
