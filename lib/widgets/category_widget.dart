import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String iconImagePath;
  final String categoryName;

  const CategoryWidget({super.key, required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              iconImagePath,
              // 'lib/assets/tooth.png',
              height: 30,
            ),
            SizedBox(width: 10),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
