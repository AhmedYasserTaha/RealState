import 'package:flutter/material.dart';
import 'package:real_state_app/utils/constans.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          bildIconInfo(
              context: context,
              icon: Icons.supervisor_account_rounded,
              text: "67+",
              label: "Clients"),
          bildIconInfo(
              context: context,
              icon: Icons.location_on_sharp,
              text: "139+",
              label: "Project"),
          bildIconInfo(
              context: context,
              icon: Icons.public,
              text: "30+",
              label: "Countries"),
          bildIconInfo(
              context: context, icon: Icons.star, text: "13K+", label: "Stars"),
        ],
      ),
    );
  }

  Column bildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(label,
            style: TextStyle(
              fontSize: 16,
            ))
      ],
    );
  }
}
