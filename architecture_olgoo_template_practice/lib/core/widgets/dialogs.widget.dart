import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

void showDeleteConfirmationDialog(
    {required BuildContext context,
    required String title,
    required String bodyText,
    required Function callback}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // گرد کردن گوشه‌ها
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16.sp, fontFamily: "dana"),
        ),
        content: Text(
          bodyText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // دکمه‌ی بیخیال (بستن دیالوگ)
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child:
                    const Text("بیخیال", style: TextStyle(color: Colors.grey)),
              ),
              // دکمه‌ی حذف
              ElevatedButton(
                onPressed: () {
                  // اینجا تابع حذف را اجرا کن
                  callback();
                  context.pop(); // بستن دیالوگ
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("حذف", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      );
    },
  );
}
