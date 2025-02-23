import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_app/utils/constans.dart';
import 'package:real_state_app/widget/menu/contact_info_widget.dart';
import 'package:real_state_app/widget/menu/goles.dart';
import 'package:real_state_app/widget/menu/logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 0, 18, 51),
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfoWidget(),
                    Divider(),
                    Goles(),
                    Divider(),
                    SizedBox(height: kDefaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset("assets/icons/download.svg"),
                            SizedBox(width: kDefaultPadding / 2),
                            Text("Download Push hear"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: kDefaultPadding / 2),
                      padding:
                          EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                      color: kSecondaryColor,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Wrap(
                            alignment: WrapAlignment.center,
                            spacing: kDefaultPadding,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/icons/linkedin.svg"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon:
                                    SvgPicture.asset("assets/icons/github.svg"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/icons/twitter.svg"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/icons/dribble.svg"),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
