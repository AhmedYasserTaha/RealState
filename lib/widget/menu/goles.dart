import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        buildGoals(text: "Planning stage"),
        buildGoals(text: "Developent"),
        buildGoals(text: "Execution phass"),
        buildGoals(text: "New way to living"),
      ],
    );
  }

  Padding buildGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
