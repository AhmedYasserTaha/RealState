import 'package:flutter/material.dart';
import 'package:real_state_app/screens/home_screen.dart';
import 'package:real_state_app/widget/main/home_bannar.dart';
import 'package:real_state_app/widget/main/icon_info.dart';
import 'package:real_state_app/widget/main/porject.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
        mainSection: SingleChildScrollView(
      child: Column(
        children: [
          HomeBannar(),
          IconInfo(),
          Porjects(),
        ],
      ),
    ));
  }
}
