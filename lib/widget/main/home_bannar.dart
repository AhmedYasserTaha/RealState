import 'package:flutter/material.dart';
import 'package:real_state_app/utils/constans.dart';

class HomeBannar extends StatelessWidget {
  const HomeBannar({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // textAlign: TextAlign.center,
                  "Build a greate future \n for all of us!",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 2,
                          vertical: kDefaultPadding),
                      backgroundColor: kPrimaryColor),
                  onPressed: () {},
                  child: Text(
                    "CONTACT US",
                    style: TextStyle(color: kBgColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
