import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class NumberFormatTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final Widget? suffix;
  final InputDecoration? decoration;

  const NumberFormatTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.suffix,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        if (value.isEmpty) return;

        // حذف همه کاراکترهای غیر عددی
        String numericOnly = value.replaceAll(RegExp(r'[^\d]'), '');

        if (numericOnly.isEmpty) {
          controller.text = '';
          return;
        }

        // فرمت‌بندی عدد
        String formatted = numericOnly.seRagham();

        // اگر متن تغییر کرده باشد، آپدیت کنترلر
        if (formatted != value) {
          controller.value = TextEditingValue(
            text: formatted,
            selection: TextSelection.collapsed(offset: formatted.length),
          );
        }
      },
      decoration: decoration ??
          InputDecoration(
            labelText: labelText,
            hintText: hintText,
            suffixIcon: suffix,
            border: const OutlineInputBorder(),
          ),
    );
  }
}
