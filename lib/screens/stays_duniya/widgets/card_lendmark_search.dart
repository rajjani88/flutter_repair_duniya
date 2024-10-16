import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';

class CardLendMarkSearch extends StatelessWidget {
  const CardLendMarkSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      elevation: 2,
      child: Stack(
        children: [
          const TextField(
            decoration: InputDecoration(
                hintText: 'Search Landmark and Area',
                hintStyle: TextStyle(fontSize: 16, color: colorTextGray),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.location_pin,
                  color: colorTextGray,
                )),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              right: 10,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.navigation_outlined,
                      size: 26,
                      color: Color(0xff545454),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
