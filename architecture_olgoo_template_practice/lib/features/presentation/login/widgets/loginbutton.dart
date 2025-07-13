
import 'package:architecture_olgoo_template_practice/config/assets/strings.dart';
import 'package:architecture_olgoo_template_practice/config/theme/measure.dart';
import 'package:flutter/material.dart';

class loginbutton extends StatelessWidget {
  const loginbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
          hoverColor: Theme.of(context).colorScheme.outline,
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 48,
            decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(Measures.largBorderRadius),
     gradient:  LinearGradient(colors:  [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.primaryFixed])),
     child: Center(child:Text(StringConsts.loginButton) ),
      ),
      );
  }
}

