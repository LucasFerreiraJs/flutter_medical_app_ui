// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalappui/widgets/category_widget.dart';

import '../widgets/doctor_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 25.0),
              padding: const EdgeInsets.only(top: 25, right: 25.0, left: 25.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Jhon Bell',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.purple[100], borderRadius: BorderRadius.circular(12)),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_tutvdkg0.json', height: 100, width: 100, fit: BoxFit.cover),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you fell?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Fill out yout medical card right now',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "How can we help you?",
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryWidget(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/assets/tooth.png',
                  ),
                  CategoryWidget(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/assets/surgeon.png',
                  ),
                  CategoryWidget(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'lib/assets/drugs.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See list',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 50),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DoctorCardWidget(
                      doctorName: 'Dr. Arlene McCoy',
                      doctorProfession: 'Therapist, 7 y.e',
                      imagePath: 'lib/assets/doctor1.png',
                      rating: '4.9',
                    ),
                    DoctorCardWidget(
                      doctorName: 'Dr. Arlene McCoy',
                      doctorProfession: 'Therapist, 7 y.e',
                      imagePath: 'lib/assets/doctor2.png',
                      rating: '4.9',
                    ),
                    DoctorCardWidget(
                      doctorName: 'Dr. Arlene McCoy',
                      doctorProfession: 'Therapist, 7 y.e',
                      imagePath: 'lib/assets/doctor3.png',
                      rating: '4.9',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
