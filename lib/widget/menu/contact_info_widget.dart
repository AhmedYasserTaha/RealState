import 'package:flutter/material.dart';
import 'package:real_state_app/utils/constans.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: kDefaultPadding, // مسافات أفقية بين العناصر
      runSpacing: kDefaultPadding / 2, // مسافات عمودية بين العناصر
      children: [
        buildContactInfo(title: "📍 Address", text: "Station Street 5"),
        buildContactInfo(title: "🌍 Country", text: "Egypt"),
        buildContactInfo(title: "✉️ Email", text: "ahmed@gmail.com"),
        buildContactInfo(title: "📞 Mobile", text: "+2010101010"),
        buildContactInfo(title: "🔗 Website", text: "my@website.com"),
      ],
    );
  }

  Widget buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2, // العنوان يأخذ مساحة أقل
            child: Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: kDefaultPadding),
          Expanded(
            flex: 3, // النص يأخذ مساحة أكبر
            child: SelectableText(
              // يجعل النص قابلاً للنسخ
              text,
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
