import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';

class MyBtn extends StatelessWidget {
  final String title;
  final bool isEnabled;
  final Function()? onTap;
  const MyBtn(
      {super.key,
      required this.title,
      required this.isEnabled,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 12, bottom: 12),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: isEnabled ? Colors.black : Color(0xffCCCCCC),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
