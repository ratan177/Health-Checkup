// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_checkup/View/Cart.dart';
import 'package:health_checkup/color.dart';
import 'package:health_checkup/dimesnion.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({super.key});

  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  List<String> time = [
    '08:00 AM',
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
    '04:00 PM',
    '05:00 PM',
    '06:00 PM',
    '07:00 PM',
  ];
  bool isSelcet = true;
  void _handleTap() {
    setState(() {
      isSelcet = !isSelcet;
    });
  }

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Book Appointment',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: AppColors.skyColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.scaleH(20), vertical: Dimensions.scaleH(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Selected Date:',
              style: GoogleFonts.poppins(
                  fontSize: Dimensions.scaleH(15), fontWeight: FontWeight.w500),
            ),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select Date'),
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.01,
            ),
            Text(
              '${selectedDate.toLocal()}'.split(' ')[0],
              style: TextStyle(
                  fontSize: Dimensions.scaleH(20), fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: 20),

            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            Text(
              'Selected Time:',
              style: GoogleFonts.poppins(
                  fontSize: Dimensions.scaleH(15), fontWeight: FontWeight.w500),
            ),
            // Text(
            //   selectedTime.format(context),
            //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(
            //   height: Dimensions.screenHeight * 0.02,
            // ),
            // ElevatedButton(
            //   onPressed: () => _selectTime(context),
            //   child: Text('Select Time'),
            // ),
            SizedBox(
              height: Dimensions.screenHeight * 0.01,
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.25,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 0,
                    mainAxisExtent: 50),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _handleTap();
                              });
                            },
                            child: Container(
                              height: Dimensions.scaleH(35),
                              width: Dimensions.scaleW(80),
                              decoration: BoxDecoration(
                                  color: isSelcet
                                      ? Colors.white
                                      : AppColors.darkblueColor,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 2,
                                      color: AppColors.darkblueColor)),
                              child: Center(
                                  child: Text(
                                time[index],
                                style: GoogleFonts.poppins(
                                    color:
                                        isSelcet ? Colors.black : Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.31,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ));
              },
              child: Container(
                height: Dimensions.scaleH(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isSelcet ? Colors.grey : AppColors.darkblueColor),
                child: Center(
                  child: Text(
                    'Confirm',
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
