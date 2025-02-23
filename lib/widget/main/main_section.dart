import 'package:flutter/material.dart';
import 'package:real_state_app/screens/home_screen.dart';
import 'package:real_state_app/widget/main/home_bannar.dart';
import 'package:real_state_app/widget/main/icon_info.dart';
import 'package:real_state_app/widget/main/porject_info.dart';
import 'package:real_state_app/widget/main/recommandtaion.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeBanner(),
            SizedBox(height: 20), // مسافة بين الأقسام
            IconInfo(),
            SizedBox(height: 20),
            ProjectsInfo(),
            SizedBox(height: 20),
            Recommandtaion()
          ],
        ),
      ),
    );
  }
}
