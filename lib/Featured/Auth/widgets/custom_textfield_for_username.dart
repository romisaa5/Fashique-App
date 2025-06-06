import 'package:flutter/material.dart';
import 'package:e_commerce/constnts.dart';

class CustomTextfieldForEmail extends StatefulWidget {
  final TextEditingController emailController;
  final FocusNode? passwordFocusNode;
  CustomTextfieldForEmail({
    super.key,
    required this.emailController,
    this.passwordFocusNode,
  });

  @override
  State<CustomTextfieldForEmail> createState() =>
      _CustomTextfieldForEmailState();
}

class _CustomTextfieldForEmailState extends State<CustomTextfieldForEmail> {
  final FocusNode _emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'The field is required';
        }
        if (!RegExp(
          r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
        ).hasMatch(value)) {
          return 'Enter a valid email';
        }
        return null;
      },
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(widget.passwordFocusNode);
      },
      textInputAction: TextInputAction.next,
      focusNode: _emailFocusNode,
      controller: widget.emailController,
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: const Icon(Icons.email, color: kprimaryColor),
      ),
    );
  }
}
