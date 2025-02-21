import 'package:flutter/material.dart';
import 'package:real_state_app/widget/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});

  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(minWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: SideMenuSection(),
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
