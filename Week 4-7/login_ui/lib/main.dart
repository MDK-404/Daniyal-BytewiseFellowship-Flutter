// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login_ui/login.dart';
import 'package:login_ui/register.dart';
import 'package:login_ui/home_screen.dart';
import 'package:login_ui/splash_screen.dart';
import 'package:login_ui/forgot_password.dart';
import 'package:login_ui/verify.dart';
import 'package:login_ui/new_password.dart';

void main() {
  runApp(MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
  'register.id': (context) => MyRegister(),
  'login': (context) => MyLogin(),
  'home':(context) =>MyHomePage(),
        'start':(context) =>Splash(),
        'forgot':(context) =>ForgotPassword(),
        'send':(context) =>Verify(),
        'verify':(context) =>NewPassword(),

  },
  ));
}