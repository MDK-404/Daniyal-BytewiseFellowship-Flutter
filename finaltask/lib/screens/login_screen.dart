import 'package:finaltask/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}): super  (key: key);


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),
              SvgPicture.asset(
                'assets/ic_instagram.svg' ,
                // ignore: deprecated_member_use
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64),
                TextFieldInput(
                hintText: 'Enter Your Email',
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
              ),
              const SizedBox(height: 24),
              TextFieldInput(
                hintText: 'Enter Your Password',
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true,
              ),
              const SizedBox(height: 24),
              Container(
                child: const Text('Login'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical:12),
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )
                    ),
                  color: blueColor
                ),
              ),
              const SizedBox(height: 12),
              Flexible(child: Container(), flex: 2),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                  child: Text("Don't have and account?"),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                ),
                  Container(
                    child: Text(
                      "Sign up.",
                      style:TextStyle(
                      fontWeight: FontWeight.bold,
                      )
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
              ],
              )

            ],
          ),
        ) ,
      )
    );
  }
}
