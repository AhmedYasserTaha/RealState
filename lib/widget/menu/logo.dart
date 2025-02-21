import 'package:flutter/material.dart';
import 'package:real_state_app/utils/constans.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // يخلي الـ Column تاخد المساحة المطلوبة بس
        children: [
          /// ✅ الصورة بحجم مناسب بدون Overflow
          SizedBox(
            width: 100,
            child: Image.asset("assets/logo.png"),
          ),

          SizedBox(height: kDefaultPadding / 2), // مسافة صغيرة بين الصورة والنص

          /// ✅ العنوان الأساسي
          Text(
            "Real Estate",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),

          SizedBox(
              height: kDefaultPadding / 2), // مسافة صغيرة بين العنوان والوصف

          /// ✅ النص الوصفي، مع التحكم في Overflow
          Text(
            "Modern home with \n great interior design", // تصحيح كلمة great
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              height: 1.5,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
