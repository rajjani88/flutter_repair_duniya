import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';
import 'package:flutter_repair_duniya/utils/app_images.dart';
import 'package:get/get.dart';

class MyAppBar extends StatefulWidget {
  final bool showBack;
  final bool hideNotification;
  final String title;
  const MyAppBar(
      {super.key,
      this.hideNotification = false,
      this.showBack = false,
      this.title = ''});

  @override
  State<MyAppBar> createState() => _MyAppvarState();
}

class _MyAppvarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.showBack
            ? InkWell(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(
                  getIcon('back_btn'),
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
              )
            : Image.asset(
                getIcon('menu'),
                height: 28,
                width: 28,
                fit: BoxFit.cover,
              ),
        widget.showBack
            ? const SizedBox()
            : InkWell(
                onTap: () {},
                child: Image.asset(
                  getIcon('location_pin'),
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
        SizedBox(
          width: 12,
        ),
        widget.showBack
            ? Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            : Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'XYZ colony,',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    Text('Andhra Pradesh',
                        style: TextStyle(fontSize: 14, color: colorTextGray))
                  ],
                ),
              ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            getIcon('chat_icon'),
            height: 54,
            width: 54,
            fit: BoxFit.cover,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            getIcon('heart_icon'),
            height: 54,
            width: 54,
            fit: BoxFit.cover,
          ),
        ),
        widget.hideNotification
            ? const SizedBox()
            : InkWell(
                onTap: () {},
                child: Image.asset(
                  getIcon('bell'),
                  height: 54,
                  width: 54,
                  fit: BoxFit.cover,
                ),
              ),
      ],
    );
  }
}
