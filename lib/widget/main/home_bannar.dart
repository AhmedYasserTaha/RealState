import 'package:flutter/material.dart';
import 'package:real_state_app/responsive_screen.dart';
import 'package:real_state_app/utils/constans.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AspectRatio(
          aspectRatio: ResponsiveScreen.isMobile(context) ? 1 : 1.7,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          "Build a great future \n for all of us!",
                          style: ResponsiveScreen.isDesktop(context)
                              ? Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)
                              : Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: kDefaultPadding),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 2,
                          vertical: kDefaultPadding,
                        ),
                        backgroundColor: kPrimaryColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        "CONTACT US",
                        style: TextStyle(color: kBgColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
