// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_checkup/View/Home_page.dart';
import 'package:health_checkup/color.dart';
import 'package:health_checkup/dimesnion.dart';

class SuccessFull extends StatefulWidget {
  const SuccessFull({super.key});

  @override
  State<SuccessFull> createState() => _SuccessFullState();
}

class _SuccessFullState extends State<SuccessFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 35,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BackButton(color: Colors.black),
        ),
        title: Text(
          'Success',
          style: GoogleFonts.poppins(fontSize: Dimensions.scaleH(17)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: AppColors.skyColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: Dimensions.scaleH(20),
            right: Dimensions.scaleH(20),
            top: Dimensions.screenHeight * .1),
        child: Column(
          children: [
            Container(
              height: Dimensions.screenHeight * 0.45,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(7)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Dimensions.scaleH(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/success.png',
                      width: Dimensions.screenWidth * .4,
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(20),
                    ),
                    Text(
                      'Lab tests have been\n'
                      ' scheduled successfully, You \n'
                      'will receive a mail of the same. ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: Dimensions.scaleH(12),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(20),
                    ),
                    Text(
                      'data  ' '|' '  time',
                      style: GoogleFonts.poppins(
                          fontSize: Dimensions.scaleH(15),
                          color: Colors.grey[600]),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimensions.screenHeight * 0.25),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home_Page(),
                    ));
              },
              child: Container(
                height: Dimensions.scaleH(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.darkblueColor),
                child: Center(
                  child: Text(
                    'Back to home',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
