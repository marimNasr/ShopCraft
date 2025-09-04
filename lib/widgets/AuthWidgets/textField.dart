import 'package:flutter/material.dart';

import '../../screenSizeHandling/screenSize.dart';

// A text field widget with customizable properties
textField({
  required TextEditingController controller,
  required String hint,
  bool obscure = false,
  VoidCallback? toggleFunction,
  required String? Function(String?) validator,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: screenSize.const_width / 20,
      vertical: screenSize.const_height / 80,
    ),
    child: TextFormField(
      controller: controller,
      cursorColor: Color.fromARGB(255, 21, 102, 81),
      // Hide text if it's a password field
      obscureText: obscure,
      style: TextStyle(fontFamily: "Suwannaphum"),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: screenSize.const_width / 25,
          fontFamily: "Suwannaphum",
        ),
        errorStyle: TextStyle(fontFamily: "Suwannaphum"),
        suffixIcon: toggleFunction != null
            /// Show toggle button only if toggle function is provided
            ? IconButton(
                icon: Icon(
                  obscure ? Icons.visibility_off : Icons.visibility,
                  color: const Color.fromARGB(255, 21, 102, 81),
                ),
                onPressed: toggleFunction,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenSize.const_width / 30),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenSize.const_width / 30),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        // to keep the border when focused after error
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenSize.const_width / 30),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
      ),

      /// Validator function for form validation
      validator: validator,
    ),
  );
}
