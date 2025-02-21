import 'package:flutter/material.dart';
import 'package:real_state_app/utils/constans.dart';

class Porjects extends StatelessWidget {
  const Porjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our Projects",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: kDefaultPadding,
            mainAxisExtent: kDefaultPadding,
          ),
          itemBuilder: (context, index) => Container(
            color: Colors.blueGrey,
          ),
        )
      ],
    );
  }
}
