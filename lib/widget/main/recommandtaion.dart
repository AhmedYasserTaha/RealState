import 'package:flutter/material.dart';
import 'package:real_state_app/model/recomandation.dart';
import 'package:real_state_app/utils/constans.dart';

class Recommandtaion extends StatelessWidget {
  const Recommandtaion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultFontSize, horizontal: kDefaultFontSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Client Recommendations",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: kDefaultFontSize),
          SizedBox(
            height: 200, // تأكد إن في مساحة كافية للتمرير
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Row(
                children: List.generate(
                  demoRecommendations.length,
                  (index) => Container(
                    margin: const EdgeInsets.only(right: kDefaultFontSize),
                    width: 400,
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
                            backgroundImage:
                                AssetImage(demoRecommendations[index].image!),
                          ),
                          title: Text(
                            demoRecommendations[index].name!,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          subtitle: Text(
                            demoRecommendations[index].source!,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        const SizedBox(height: kDefaultFontSize / 2),
                        Text(
                          demoRecommendations[index].text!,
                          maxLines: 4,
                          style: const TextStyle(height: 1.5),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
