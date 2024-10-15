import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/commons/bottom_bar.dart';
import 'package:flutter_repair_duniya/commons/category_card.dart';
import 'package:flutter_repair_duniya/commons/expert_card.dart';
import 'package:flutter_repair_duniya/commons/my_appbar.dart';
import 'package:flutter_repair_duniya/commons/my_image_slider.dart';
import 'package:flutter_repair_duniya/screens/stays_duniya/pg_suniya_form_screen.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';
import 'package:flutter_repair_duniya/utils/app_images.dart';
import 'package:get/get.dart';

class StayDuniyaScreen extends StatefulWidget {
  const StayDuniyaScreen({super.key});

  @override
  State<StayDuniyaScreen> createState() => _StayDuniyaScreenState();
}

class _StayDuniyaScreenState extends State<StayDuniyaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: MyBottomBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MyAppBar(
                  showBack: true,
                  title: 'Stays Duniya',
                ),
                const SizedBox(
                  height: 20,
                ),
                ImageCarouselSlider(imageUrls: [
                  getImage('slider1'),
                  getImage('slider1'),
                  getImage('slider1')
                ]),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Book Now',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Feel free to search rent based on preferences',
                      style: TextStyle(
                        fontSize: 16,
                        color: colorTextGray,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  color: colorCardBgLight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CategoryCard(
                          bgColor: colorCard1,
                          image: getImage('pay_guest'),
                          title: 'PG',
                          onTap: () {
                            Get.to(() => const PgSuniyaFormScreen());
                          },
                        ),
                        CategoryCard(
                          bgColor: colorCard2,
                          image: getImage('house_rent'),
                          title: 'House/Flat Rent ',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  color: colorCardBgLight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CategoryCard(
                          bgColor: colorCard1,
                          image: getImage('commarical'),
                          title: 'Commercial',
                        ),
                        CategoryCard(
                          bgColor: colorCard2,
                          image: getImage('hotel'),
                          title: 'Hotel',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Join Us',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Let’s become partner of Stays duniya!',
                      style: TextStyle(
                        fontSize: 16,
                        color: colorTextGray,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset(getImage('list_property')).image,
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
