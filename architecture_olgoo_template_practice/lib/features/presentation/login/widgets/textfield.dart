import 'package:architecture_olgoo_template_practice/config/assets/icons_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class textfieldwidget extends StatelessWidget {
  const textfieldwidget({
    super.key,
    required this.PhonNumberController,
  });

  final TextEditingController PhonNumberController;

  @override
  Widget build(BuildContext context) {
    return TextField(
              controller: PhonNumberController,
              keyboardType: TextInputType.number, //عددی شدن کیبورد
              textAlign: TextAlign.right, // راست‌چین کردن متن ورودی
              decoration: InputDecoration(
                  suffixIcon: 
                    SvgPicture.asset(
                       IconPath.admin,
                       width: 24,
                       height: 24,
                       ),
    
                   
    
                  hintText: "مثلا09024365997",
                  hintStyle: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.5), // کمرنگ‌تر
                    fontSize: 14, // اختیاری
                    fontStyle: FontStyle.italic, // اختیاری برای زیبایی
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.5), // رنگ حاشیه
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )));
  }
}