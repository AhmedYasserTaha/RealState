import 'package:flutter/material.dart';
import 'package:real_state_app/model/project.dart';
import 'package:real_state_app/utils/constans.dart';

class ProjectCart extends StatelessWidget {
  const ProjectCart({super.key, required this.project});

  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                project.image!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            project.title!,
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
              project.description!,
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
    );
  }
}
