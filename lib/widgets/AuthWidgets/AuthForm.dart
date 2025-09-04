import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import 'textField.dart';
import 'textFieldLabel.dart';

/// An authentication form
class AuthForm extends StatefulWidget {
  final bool isSignUp;
  final GlobalKey<FormState> formKey;
  final TextEditingController? fullNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController? confirmPasswordController;

  const AuthForm({
    super.key,
    required this.isSignUp,
    required this.formKey,
    this.fullNameController,
    required this.emailController,
    required this.passwordController,
    this.confirmPasswordController,
  });

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  // Password visibility toggles
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    //Localization
    final local = S.of(context);

    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Full Name field for Sign Up only
          if (widget.isSignUp) ...[
            fieldLabel(local.fullName),
            textField(
              controller: widget.fullNameController!,
              hint: local.fullNameExample,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return local.enterFullName;
                } else if (value[0] != value[0].toUpperCase()) {
                  return local.firstLetterUppercase;
                }
                return null;
              },
            ),
          ],

          /// Email field
          fieldLabel(local.email),
          textField(
            controller: widget.emailController,
            hint: local.emailExample,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return local.enterEmail;
              } else if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value)) {
                return local.invalidEmail;
              }
              return null;
            },
          ),

          /// Password field
          fieldLabel(local.password),
          textField(
            controller: widget.passwordController,
            hint: local.enterPassword,
            obscure: _obscurePassword,
            toggleFunction: () => togglePasswordVisibility(true),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return local.pleaseEnterPassword;
              } else if (value.length < 6) {
                return local.shortPassword;
              }
              return null;
            },
          ),

          /// Confirm Password field for Sign Up only
          if (widget.isSignUp) ...[
            fieldLabel(local.confirmPassword),
            textField(
              controller: widget.confirmPasswordController!,
              hint: local.reenterPassword,
              obscure: _obscureConfirmPassword,
              toggleFunction: () => togglePasswordVisibility(false),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return local.pleaseConfirmPassword;
                } else if (value != widget.passwordController.text) {
                  return local.passwordsNotMatch;
                }
                return null;
              },
            ),
          ],
        ],
      ),
    );
  }

  /// toggling password function
  void togglePasswordVisibility(bool isPassword) {
    setState(() {
      if (isPassword) {
        _obscurePassword = !_obscurePassword;
      } else {
        _obscureConfirmPassword = !_obscureConfirmPassword;
      }
    });
  }
}
