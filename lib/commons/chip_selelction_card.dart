import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';

class ChipSelelctionCard extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function()? onSelect;
  const ChipSelelctionCard(
      {super.key, required this.title, this.isSelected = false, this.onSelect});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      child: Chip(
          elevation: 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: isSelected ? colorTextBlack : Colors.white,
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : colorTextBlack),
            ),
          )),
    );
  }
}
