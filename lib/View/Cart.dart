// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_checkup/View/Select_Time.dart';
import 'package:health_checkup/View/success.dart';
import 'package:health_checkup/color.dart';
import 'package:health_checkup/dimesnion.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isChecked = false;
  // DateTime selectedDate = DateTime.now();
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2101),
  //   );
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'My Cart',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 99, 177, 183),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.scaleH(15)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Order review',
                style: GoogleFonts.poppins(
                    color: AppColors.darkblueColor,
                    fontSize: Dimensions.scaleH(18),
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.scaleH(8),
                  vertical: Dimensions.scaleH(5)),
              child: Container(
                height: Dimensions.screenHeight * 0.22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 0.5),
                ),
                child: Column(
                  children: [
                    Container(
                      height: Dimensions.scaleH(32),
                      decoration: BoxDecoration(
                        color: AppColors.darkblueColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Pathology tests',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: Dimensions.scaleH(12),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.scaleH(20),
                          vertical: Dimensions.scaleH(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thyroid Profile',
                            style: GoogleFonts.poppins(
                                fontSize: Dimensions.scaleH(13),
                                fontWeight: FontWeight.w600),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '₹ 1000/-',
                                style: GoogleFonts.poppins(
                                    color: AppColors.skyColor,
                                    fontSize: Dimensions.scaleH(12),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: Dimensions.scaleH(3),
                              ),
                              Text(
                                '1400/-',
                                style: GoogleFonts.poppins(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                    fontSize: Dimensions.scaleH(8),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.scaleH(20),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: Dimensions.scaleH(32),
                            width: Dimensions.screenWidth * 0.35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: AppColors.darkblueColor),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.scaleH(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.delete_outline,
                                    color: AppColors.darkblueColor,
                                  ),
                                  Text(
                                    'Remove',
                                    style: GoogleFonts.poppins(
                                        color: AppColors.darkblueColor,
                                        fontSize: Dimensions.scaleH(12),
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(7),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.scaleH(20)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: Dimensions.scaleH(32),
                            width: Dimensions.screenWidth * 1,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: AppColors.darkblueColor),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.scaleH(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.file_upload_outlined,
                                    color: AppColors.darkblueColor,
                                  ),
                                  Text(
                                    'Upload prescription (optional)',
                                    style: GoogleFonts.poppins(
                                        color: AppColors.darkblueColor,
                                        fontSize: Dimensions.scaleH(12),
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.scaleH(8),
                  vertical: Dimensions.scaleH(4)),
              child: Container(
                height: Dimensions.screenHeight * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Dimensions.scaleH(20)),
                  child: Row(children: [
                    Icon(
                      Icons.calendar_month_outlined,
                    ),
                    SizedBox(
                      width: Dimensions.scaleW(10),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectTime(),
                            ));
                      },
                      child: Container(
                        height: Dimensions.scaleH(30),
                        width: Dimensions.screenWidth * 0.6,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.scaleH(6),
                              vertical: Dimensions.scaleH(5)),
                          child: Text(
                            'Select Date',
                            style: GoogleFonts.poppins(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.scaleH(8),
                  vertical: Dimensions.scaleH(4)),
              child: Container(
                height: Dimensions.screenHeight * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.scaleH(25),
                      vertical: Dimensions.scaleH(10)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'M.R.P Total',
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: Dimensions.scaleH(11)),
                        ),
                        Text(
                          '1400',
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: Dimensions.scaleH(11)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: Dimensions.scaleH(11)),
                        ),
                        Text(
                          '400',
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: Dimensions.scaleH(11)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount to be paid',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkblueColor,
                              fontSize: Dimensions.scaleH(15)),
                        ),
                        Text(
                          '₹ 1000/-',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkblueColor,
                              fontSize: Dimensions.scaleH(15)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Total Saving',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: Dimensions.scaleH(10)),
                        ),
                        SizedBox(
                          width: Dimensions.scaleH(20),
                        ),
                        Text(
                          '₹ 400/-',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: AppColors.darkblueColor,
                              fontSize: Dimensions.scaleH(13)),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.scaleH(8),
                  vertical: Dimensions.scaleH(5)),
              child: Container(
                height: Dimensions.screenHeight * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.scaleH(10),
                      vertical: Dimensions.scaleH(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
                        activeColor: AppColors.darkblueColor,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hard copy of reports ',
                            style: GoogleFonts.poppins(
                                fontSize: Dimensions.scaleH(10)),
                          ),
                          Text(
                            'Reports will be delivered within 3-4 working days. Hard\n copy charges are non-refundable once the reports have \n been dispatched.\n'
                            '\n'
                            '\n'
                            '₹150 per person',
                            style: GoogleFonts.poppins(
                                fontSize: Dimensions.scaleH(7)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.scaleH(7),
                  vertical: Dimensions.scaleH(20)),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessFull(),
                      ));
                },
                child: Container(
                  height: Dimensions.scaleH(40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isChecked ? AppColors.darkblueColor : Colors.grey),
                  child: Center(
                    child: Text(
                      'Schedule',
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
