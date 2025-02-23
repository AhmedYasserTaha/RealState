import 'package:flutter/material.dart';
import 'package:real_state_app/responsive_screen.dart';
import 'package:real_state_app/utils/constans.dart';
import 'package:real_state_app/widget/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});

  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveScreen.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
              )),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(minWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (ResponsiveScreen.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: SideMenuSection(),
                  ),
                SizedBox(
                  width: kDefaultFontSize,
                ),
                SizedBox(
                  width: kDefaultFontSize,
                ),
                Expanded(flex: 7, child: mainSection),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
