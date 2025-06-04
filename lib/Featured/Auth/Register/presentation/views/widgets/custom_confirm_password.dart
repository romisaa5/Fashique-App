import 'package:e_commerce/constnts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomConfirmPassword extends StatefulWidget {
  const CustomConfirmPassword({super.key, this.confirmpasswordFocusNode, required this.confirmpasswordController});
  final FocusNode? confirmpasswordFocusNode;
   final TextEditingController confirmpasswordController;
  @override
  State<CustomConfirmPassword> createState() => _CustomConfirmPasswordState();
}

class _CustomConfirmPasswordState extends State<CustomConfirmPassword> {
    bool isshown = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'The field is required';
        }
        return null;
      },
      
      focusNode: widget.confirmpasswordFocusNode, 
      controller: widget.confirmpasswordController,
      obscureText: !isshown,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isshown = !isshown;
            });
          },
          icon: Icon(isshown ? Icons.visibility : Icons.visibility_off),
        ),
        hintText: 'Confirm Password',
        prefixIcon: const Icon(Icons.lock, color: KprimaryColor),
      ),
    );
  }
}
