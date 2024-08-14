import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderImages extends StatelessWidget {
  const SliderImages({super.key});

  // PageController pageController = PageController(viewportFraction: .85);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 10,
        itemBuilder: (context, index, realIndex) {
          return Container(
            // width: widthMediaQuery(context),
            // height: 200.h,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 170.h,
          scrollDirection: Axis.horizontal,
          aspectRatio: 16 / 9,
          autoPlay: true,
        ));
  }
}
