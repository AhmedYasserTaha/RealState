import 'package:flutter/material.dart';
import 'package:real_state_app/utils/constans.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage("assets/logo.png"),
              // height: 100,
              width: 100,
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              "Real Estate",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Spacer(),
            Text(
              "Modern home with \n greate interior desgin",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
