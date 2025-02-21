import 'package:flutter/material.dart';
import 'package:real_state_app/utils/constans.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        bildContactinf(title: "Address", text: "Station Street 5"),
        bildContactinf(title: "Country", text: "Eygpt"),
        bildContactinf(title: "Email", text: "ahmed@gmail.com"),
        bildContactinf(title: "Mobile", text: "+2010101010"),
        bildContactinf(title: "Website", text: "my@website.com"),
      ],
    );
  }

  Padding bildContactinf({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
