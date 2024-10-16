import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/commons/category_card.dart';
import 'package:flutter_repair_duniya/commons/expert_card.dart';
import 'package:flutter_repair_duniya/commons/my_appbar.dart';
import 'package:flutter_repair_duniya/commons/my_image_slider.dart';
import 'package:flutter_repair_duniya/contoller/pg_duniya_contoller.dart';
import 'package:flutter_repair_duniya/screens/stays_duniya/stays_duniya_screen.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';
import 'package:flutter_repair_duniya/utils/app_images.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PgDuniyaContoller pgDuniyaContoller = Get.put(PgDuniyaContoller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MyAppBar(),
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
                      'Repairs Duniya',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'View More',
                      style: TextStyle(
                        fontSize: 14,
                        color: colorTextGray,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
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
                          image: getImage('ac'),
                          title: 'Air conditioner',
                        ),
                        CategoryCard(
                          bgColor: colorCard2,
                          image: getImage('refrigirator'),
                          title: 'Refrigerator',
                        ),
                        CategoryCard(
                          bgColor: colorCard3,
                          image: getImage('washing'),
                          title: 'Washing machine',
                        )
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
                      'Recommended experts',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    ExpertCard(
                        title: 'Electrician',
                        image: getIcon('electrician'),
                        bgColor: const Color(0xffE7F3F8)),
                    ExpertCard(
                        title: 'Plumber',
                        image: getIcon('plumber'),
                        bgColor: Color(0xffFFEFE5))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Additional recommendation',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset(getImage('additional_reco')).image,
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Stays Duniya',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    const Flexible(
                      child: Wrap(
                        children: [
                          Text(
                            'Preference based accommodation for separate audiences. ',
                            style: TextStyle(
                                fontSize: 12,
                                color: colorTextGray,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const StayDuniyaScreen());
                        },
                        child: const Text(
                          'View More',
                          style: TextStyle(
                            fontSize: 14,
                            color: colorTextGray,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    )
                  ],
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
                          image: getImage('house_rent'),
                          title: 'House Rent',
                        ),
                        CategoryCard(
                          bgColor: colorCard2,
                          image: getImage('pay_guest'),
                          title: 'Payign Guest',
                        ),
                        CategoryCard(
                          bgColor: colorCard3,
                          image: getImage('commarical'),
                          title: 'Commercial',
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
