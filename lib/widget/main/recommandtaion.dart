import 'package:flutter/material.dart';
import 'package:real_state_app/model/recomandation.dart';
import 'package:real_state_app/utils/constans.dart';

class Recommandtaion extends StatelessWidget {
  const Recommandtaion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultFontSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Client Recommendations",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: kDefaultFontSize),
          SizedBox(
            height: 200, // تأكد من وجود مساحة كافية للتمرير
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(), // تمرير سلس
              child: Row(
                children: demoRecommendations.map((recommendation) {
                  return Container(
                    width: 400, // عرض العنصر الواحد
                    margin: const EdgeInsets.only(right: kDefaultFontSize),
                    padding: const EdgeInsets.all(kDefaultFontSize),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(recommendation.image!),
                          ),
                          title: Text(
                            recommendation.name!,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          subtitle: Text(
                            recommendation.source!,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        const SizedBox(height: kDefaultFontSize / 2),
                        Text(
                          recommendation.text!,
                          maxLines: 4,
                          style: const TextStyle(height: 1.5),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
