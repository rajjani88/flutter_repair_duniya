import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_images.dart';

class ExpertCard extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String image;
  const ExpertCard(
      {super.key,
      required this.title,
      required this.image,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset(getImage('expert_avtar_bg')).image)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}
