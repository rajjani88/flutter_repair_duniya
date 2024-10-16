import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';

class CardCitySearch extends StatelessWidget {
  const CardCitySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      elevation: 2,
      child: const Stack(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search City...',
                hintStyle: TextStyle(fontSize: 16, color: colorTextGray),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: colorTextGray,
                )),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              right: 10,
              child: Icon(
                Icons.arrow_drop_down_rounded,
                size: 36,
                color: Color(0xff545454),
              ))
        ],
      ),
    );
  }
}
