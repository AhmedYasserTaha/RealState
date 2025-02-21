import 'package:flutter/material.dart';
import 'package:real_state_app/model/project.dart';
import 'package:real_state_app/utils/constans.dart';

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
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: demoProjects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  crossAxisCount, // عدد الأعمدة بناءً على حجم الشاشة
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        demoProjects[index].image!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    demoProjects[index].title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Expanded(
                    flex: 2,
                    child: Text(
                      demoProjects[index].description!,
                      style: TextStyle(height: 1.5, color: Colors.white70),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "More info >",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
