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
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: const SideMenuSection(),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: ResponsiveScreen.isDesktop(context)
                ? 1440.0
                : MediaQuery.of(context).size.width,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (ResponsiveScreen.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenuSection(),
                ),
              const SizedBox(width: kDefaultFontSize * 2),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultFontSize),
                    child: mainSection,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
