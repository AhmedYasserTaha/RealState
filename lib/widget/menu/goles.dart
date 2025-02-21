import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_app/utils/constans.dart';

class Goles extends StatelessWidget {
  const Goles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Goals",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold, // جعل العنوان أكثر وضوحًا
                  color: Colors.white,
                ),
          ),
        ),
        buildGoals(text: "Planning stage"),
        buildGoals(text: "Development"), // تصحيح كلمة Developent
        buildGoals(text: "Execution phase"), // تصحيح Execution phass
        buildGoals(text: "New way to living"),
      ],
    );
  }

  Padding buildGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/icons/check.svg",
            height: 20, // ضبط الحجم لو محتاج
            colorFilter:
                ColorFilter.mode(Colors.green, BlendMode.srcIn), // لون الأيقونة
          ),
          SizedBox(width: kDefaultPadding / 2),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white70, // لون النص
                fontSize: 14, // حجم مناسب
              ),
            ),
          ),
        ],
      ),
    );
  }
}
