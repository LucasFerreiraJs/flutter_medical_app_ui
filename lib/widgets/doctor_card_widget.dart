// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DoctorCardWidget extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String rating;
  final String doctorProfession;

  const DoctorCardWidget({
    super.key,
    required this.imagePath,
    required this.doctorName,
    required this.rating,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        height: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  // image: AssetImage('lib/assets/doctor1.png'),
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(50),
            //   child: Image.asset(
            //     'lib/assets/doctor1.png',
            //     height: 100,
            //   ),
            // ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[600]),
                Text(
                  rating,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              doctorName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(doctorProfession),
          ],
        ),
      ),
    );
  }
}
