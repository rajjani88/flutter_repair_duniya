import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';

class CardBookingModesSelection extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function()? onTap;
  const CardBookingModesSelection(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 12, bottom: 12),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: isSelected ? Border.all(color: colorTextBlack) : null,
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    14.0,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: isSelected ? 18 : 16,
                        color: colorTextBlack,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal),
                  ),
                ),
              ],
            ),
            Visibility(
              visible: isSelected,
              child: Positioned(
                  top: 0,
                  bottom: 0,
                  right: 14,
                  child: Icon(
                    Icons.done,
                    size: 30,
                    color: Color(0xff00C99F),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
