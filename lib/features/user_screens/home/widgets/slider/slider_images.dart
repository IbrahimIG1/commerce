import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/features/user_screens/home/widgets/slider/slider_item.dart';

class SliderImages extends StatelessWidget {
  const SliderImages({super.key});
  // PageController pageController = PageController(viewportFraction: .85);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 10,
        itemBuilder: (context, index, realIndex) {
          return SliderItem(
              image: 'assets/images/school_tools.jpg',
              text: 'Text Categorey Show');
        },
        options: CarouselOptions(
            height: 170.h,
            scrollDirection: Axis.horizontal,
            aspectRatio: 16 / 9,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 500)));
  }
}
