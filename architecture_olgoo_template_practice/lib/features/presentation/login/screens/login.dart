
import 'package:architecture_olgoo_template_practice/config/assets/strings.dart';

import 'package:architecture_olgoo_template_practice/features/presentation/login/widgets/loginbutton.dart';
import 'package:architecture_olgoo_template_practice/features/presentation/login/widgets/textfield.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  
  const Login({super.key});
  
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController PhonNumberController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          Text(StringConsts.loginHeader),
          Text(StringConsts.loginSubTexts),
          textfieldwidget(PhonNumberController: PhonNumberController),          
          const Spacer(), 
          // فضای خالی برای بردن متن به پایین
           loginbutton(),
          ],
        ),
      ),
    );
  }
}
