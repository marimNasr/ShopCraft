import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/AuthWidgets/AuthForm.dart';

import '../generated/l10n.dart';
import '../screenSizeHandling/screenSize.dart';
import '../widgets/buttons.dart';
import '../widgets/customizedText.dart';
import '../widgets/AuthWidgets/successDialog.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                /// Sign In form Card
                Container(
                  width: screenSize.const_width / 1.2,
                  height: screenSize.const_height / 2.3,
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
                        local.welcomeBack,
                        Colors.white,
                        fontWeight: FontWeight.w500,
                        15,
                      ),
                      customizedText(
                        local.signInToShopCraft,
                        Color.fromARGB(255, 209, 255, 231),
                        fontWeight: FontWeight.w400,
                        25,
                      ),
                      SizedBox(height: screenSize.const_height / 35),

                      /// Sign In Form
                      Expanded(
                        child: SingleChildScrollView(
                          child: AuthForm(
                            isSignUp: false,
                            formKey: _formKey,
                            emailController: emailController,
                            passwordController: passwordController,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// Sign In Button
                SizedBox(height: screenSize.const_height / 40),
                Center(
                  child: createButton(
                    local.signIn,
                    Color.fromARGB(255, 255, 153, 66),
                    () {
                      if (_formKey.currentState!.validate()) {
                        showSuccessDialog(local.signInSuccess, context);
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
