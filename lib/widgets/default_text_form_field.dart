import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';

class DefaultTextFormField extends StatelessWidget {
  final String label;
  final String validation;
  final double radius;
  final TextInputType type;
  final bool isPassword;
  final TextEditingController controller;
  final Widget prefixIcon;
  final Widget suffixIcon;

   const DefaultTextFormField(
      {Key? key,
      required this.label,
      this.radius=3,
      required this.type,
      required this.controller,
      required this.validation,
      this.isPassword = false, required this.prefixIcon, required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      validator: (value) {
        if (value!.isEmpty) {
          return validation;
        }
        return null;
      },
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: AppColors.grey)
        ),
        labelText: label,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        floatingLabelBehavior: FloatingLabelBehavior.never
      ),
    );
  }
}
