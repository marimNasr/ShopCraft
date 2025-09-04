import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/AuthWidgets/AuthForm.dart';

import '../generated/l10n.dart';
import '../screenSizeHandling/screenSize.dart';
import '../widgets/buttons.dart';
import '../widgets/customizedText.dart';
import '../widgets/AuthWidgets/successDialog.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // controllers
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    screenSize.initi_screenSize(context);

    //Localization
    final local = S.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///sign up form Card
                Container(
                  width: screenSize.const_width / 1.2,
                  height: screenSize.const_height / 1.5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(173, 21, 102, 81),
                    borderRadius: BorderRadius.circular(
                      screenSize.const_width / 20,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: screenSize.const_width / 50,
                        offset: Offset(
                          screenSize.const_width / 200,
                          screenSize.const_width / 85,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ///headers
                      SizedBox(height: screenSize.const_height / 20),
                      customizedText(
                        local.createAccount,
                        Colors.white,
                        fontWeight: FontWeight.w500,
                        15,
                      ),
                      customizedText(
                        local.joinShopCraft,
                        Color.fromARGB(255, 209, 255, 231),
                        fontWeight: FontWeight.w400,
                        25,
                      ),
                      SizedBox(height: screenSize.const_height / 35),

                      ///sign up form
                      Expanded(
                        child: SingleChildScrollView(
                          child: AuthForm(
                            isSignUp: true,
                            formKey: _formKey,
                            fullNameController: fullNameController,
                            emailController: emailController,
                            passwordController: passwordController,
                            confirmPasswordController:
                                confirmPasswordController,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///sign up button
                SizedBox(height: screenSize.const_height / 40),
                Center(
                  child: createButton(
                    local.signUp,
                    Color.fromARGB(255, 255, 153, 66),
                    () {
                      if (_formKey.currentState!.validate()) {
                        showSuccessDialog(local.signUpSuccess, context);
                      }
                    },
                    20,
                    80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
