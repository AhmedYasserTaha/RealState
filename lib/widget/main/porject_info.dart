import 'package:flutter/material.dart';
import 'package:real_state_app/model/project.dart';
import 'package:real_state_app/responsive_screen.dart';
import 'package:real_state_app/utils/constans.dart';
import 'package:real_state_app/widget/main/project_cart.dart';

class ProjectsInfo extends StatelessWidget {
  const ProjectsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    // الحصول على عرض الشاشة
    double screenWidth = MediaQuery.of(context).size.width;

    // تحديد عدد الأعمدة بناءً على حجم الشاشة
    int crossAxisCount = screenWidth < 600
        ? 1 // شاشة صغيرة → عمود واحد
        : screenWidth < 900
            ? 2 // شاشة متوسطة → عمودين
            : 3; // شاشة كبيرة → 3 أعمدة

    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Projects",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          ResponsiveScreen(
            desktop: bulidGradeVeiw(
              itemCount: demoProjects.length,
              crossAxisCount: 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCart(
                project: demoProjects[index],
              ),
            ),
            taplet: bulidGradeVeiw(
              itemCount: demoProjects.length,
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 3 : 2,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCart(
                project: demoProjects[index],
              ),
            ),
            mobileLarge: bulidGradeVeiw(
              itemCount: demoProjects.length,
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCart(
                project: demoProjects[index],
              ),
            ),
            mobile: bulidGradeVeiw(
              itemCount: demoProjects.length,
              crossAxisCount: 1,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCart(
                project: demoProjects[index],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GridView bulidGradeVeiw({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      // physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, // عدد الأعمدة بناءً على حجم الشاشة
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
          childAspectRatio: childAspectRatio),
      itemBuilder: itemBuilder,
    );
  }
}
