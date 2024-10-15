// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ImageCarouselSlider extends StatelessWidget {
//   final List<String> imageUrls;

//   const ImageCarouselSlider({Key? key, required this.imageUrls})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider(
//           items: imageUrls.map((imageUrl) {
//             return Container(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(28.0),
//                 child: Image.asset(
//                   imageUrl,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             );
//           }).toList(),
//           options: CarouselOptions(
//             height: 200.0,
//             aspectRatio: 16 / 9,
//             viewportFraction: 0.8,
//             initialPage: 0,
//             enableInfiniteScroll: true,
//             reverse: false,
//             autoPlay: true,
//             autoPlayInterval: Duration(seconds: 3),
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//             enlargeCenterPage: true,
//             scrollDirection: Axis.horizontal,
//             onPageChanged: (index, reason) {
//               // Handle page change if needed
//             },
//             dotsDecorator: DotsDecorator(
//               activeColor: Colors.grey[700],
//               size: const Size.square(10.0),
//               activeSize: const Size.square(12.0),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5.0),
//               ),
//               spacing: EdgeInsets.symmetric(horizontal: 8.0),
//               activeShape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5.0),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageCarouselSlider extends StatelessWidget {
  final List<String> imageUrls;

  const ImageCarouselSlider({Key? key, required this.imageUrls})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final PageController pageController = PageController();

    return Column(
      children: [
        CarouselSlider(
          items: imageUrls.map((imageUrl) {
            return Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              // Handle page change if needed
            },
          ),

          // controller:
          //     , // Pass the PageController to CarouselSlider
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(4),
                height: 14,
                width: 14,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),

              Container(
                margin: EdgeInsets.all(4),
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: colorTextGray, width: 2)),
              ),
              Container(
                margin: EdgeInsets.all(4),
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: colorTextGray, width: 2)),
              ),

              // Expanded(
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: imageUrls.length,
              //     itemBuilder: (context, index) => Container(
              //       margin: EdgeInsets.all(4),
              //       height: 14,
              //       width: 14,
              //       decoration: BoxDecoration(
              //           color: Colors.black, shape: BoxShape.circle),
              //     ),
              //   ),
              // )
            ],
          ),
        )
      ],
    );
  }
}
