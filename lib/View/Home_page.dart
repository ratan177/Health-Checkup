// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_checkup/View/Cart.dart';
import 'package:health_checkup/color.dart';
import 'package:health_checkup/dimesnion.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<String> healthtype = [
    'Thyroid Profile',
    'Iron Study Test',
    'Thyroid Profile',
    'Iron Study Test',
  ];
  List<String> nums = [
    '3',
    '4',
    '3',
    '3',
  ];
  List<String> prices = [
    '1000',
    '600',
    '1000',
    '600',
  ];
  List<String> actualPrice = [
    '1400',
    '1000',
    '1400',
    '1000',
  ];

  bool istap = true;
  bool clicked = false;

  void _handleTap() {
    setState(() {
      istap = !istap;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Added'),
        ),
      );
    });
  }

  Widget _buildBadge(int count) {
    return CircleAvatar(
      radius: 7,
      backgroundColor: Colors.red,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          count.toString(),
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 9,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Align(
          alignment: AlignmentDirectional.center,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/images/logos.jpg',
          width: Dimensions.scaleW(80),
        ),
        actions: [
          Stack(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: AppColors.darkblueColor,
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 30,
              child: _buildBadge(0),
            ),
          ]),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular lab tests',
                  style: GoogleFonts.poppins(
                      fontSize: Dimensions.scaleH(17),
                      color: AppColors.darkblueColor,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      'view more',
                      style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline,
                          fontSize: Dimensions.scaleH(11),
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkblueColor),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: Dimensions.scaleH(11),
                      color: AppColors.darkblueColor,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.screenHeight * 0.46,
            child: Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.scaleH(25), right: Dimensions.scaleH(25)),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 35,
                    mainAxisSpacing: 13,
                    mainAxisExtent: 170),
                itemCount: healthtype.length,
                itemBuilder: (context, index) {
                  Key itemKey = Key('item_$index');
                  return GridItem(
                    title: healthtype[index],
                    number: nums[index],
                    price: prices[index],
                    actual_price: actualPrice[index],
                    condition: istap,
                    onTap: _handleTap,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.scaleH(15)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular Packages',
                style: GoogleFonts.poppins(
                    color: AppColors.darkblueColor,
                    fontSize: Dimensions.scaleH(17),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.scaleH(35),
                vertical: Dimensions.scaleH(10)),
            child: Container(
              height: Dimensions.screenHeight * 0.288,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.5, color: Colors.grey),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.scaleH(25),
                    vertical: Dimensions.scaleH(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/medicine.png',
                          width: Dimensions.scaleH(60),
                        ),
                        Image.asset(
                          'assets/images/safe.png',
                          width: Dimensions.scaleH(60),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(10),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Full Body checkup',
                        style: GoogleFonts.poppins(
                            fontSize: Dimensions.scaleH(16),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Includes 92 tests\n'
                        '• Blood Glucose Fasting\n'
                        '• Liver Function Test\n'
                        'View more',
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: Dimensions.scaleH(8),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.scaleH(10),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee_sharp,
                          color: AppColors.skyColor,
                          size: Dimensions.scaleH(15),
                        ),
                        SizedBox(
                          height: Dimensions.scaleH(5),
                        ),
                        Text(
                          '2000/-',
                          style: GoogleFonts.poppins(
                              color: AppColors.skyColor,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: Dimensions.scaleH(50),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: Dimensions.scaleH(25),
                            width: Dimensions.scaleW(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                width: 1,
                                color: AppColors.darkblueColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: GoogleFonts.poppins(
                                  fontSize: Dimensions.scaleH(10),
                                  color: AppColors.darkblueColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String title;
  final String number;
  final String price;
  final String actual_price;
  final bool condition;
  final VoidCallback onTap;

  const GridItem(
      {required this.title,
      required this.number,
      required this.price,
      required this.actual_price,
      required this.condition,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.5, color: Colors.grey),
      ),
      child: Column(
        children: [
          Container(
            height: Dimensions.scaleH(30),
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.darkblueColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                    fontSize: Dimensions.scaleH(10), color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Includes',
                  style: GoogleFonts.poppins(fontSize: Dimensions.scaleH(10)),
                ),
                SizedBox(
                  width: Dimensions.scaleW(2),
                ),
                Text(
                  number,
                  style: GoogleFonts.poppins(fontSize: Dimensions.scaleH(10)),
                ),
                SizedBox(
                  width: Dimensions.scaleW(2),
                ),
                Text(
                  'tests',
                  style: GoogleFonts.poppins(fontSize: Dimensions.scaleH(10)),
                ),
                SizedBox(
                  width: Dimensions.scaleW(5),
                ),
                Image.asset(
                  'assets/images/Badge.png',
                  width: Dimensions.scaleH(25),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Get reports in 24 hours',
                style: GoogleFonts.poppins(
                    fontSize: Dimensions.scaleH(7), color: Colors.grey[700]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 4),
            child: Row(
              children: [
                Icon(
                  Icons.currency_rupee_sharp,
                  color: AppColors.darkblueColor,
                  size: Dimensions.scaleH(10),
                ),
                SizedBox(
                  width: Dimensions.scaleW(3),
                ),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: AppColors.darkblueColor,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: Dimensions.scaleW(3),
                ),
                Text(
                  actual_price,
                  style: GoogleFonts.poppins(
                      fontSize: 9,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.scaleH(5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.scaleH(8),
                vertical: Dimensions.scaleH(2)),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: Dimensions.scaleH(21),
                decoration: BoxDecoration(
                  color:
                      condition ? AppColors.darkblueColor : AppColors.skyColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: condition
                        ? Text(
                            'Add to Cart',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: Dimensions.scaleH(8)),
                          )
                        : Text(
                            'Added to Cart',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: Dimensions.scaleH(8)),
                          )),
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.scaleH(2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.scaleH(8),
              vertical: Dimensions.scaleH(2),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: Dimensions.scaleH(21),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'View Details',
                    style: GoogleFonts.poppins(
                        color: AppColors.darkblueColor,
                        fontSize: Dimensions.scaleH(8)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
