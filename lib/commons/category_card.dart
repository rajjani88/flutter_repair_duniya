import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_images.dart';

class CategoryCard extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String image;
  final Function()? onTap;
  const CategoryCard(
      {super.key,
      required this.title,
      required this.image,
      required this.bgColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                image,
                width: 100,
                height: 60,
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
      ),
    );
  }
}
