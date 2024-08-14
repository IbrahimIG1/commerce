import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/features/screens/home/widgets/categorey_card.dart';
import 'package:g_commerce/features/screens/home/widgets/slider/slider_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = const [
      CategoreyCard(
          image: 'assets/images/school_tools.jpg', categoreyName: 'Clothes'),
      CategoreyCard(
          image: 'assets/images/school_tools.jpg', categoreyName: 'Food'),
      CategoreyCard(
          image: 'assets/images/school_tools.jpg', categoreyName: 'Services'),
      CategoreyCard(
          image: 'assets/images/school_tools.jpg', categoreyName: 'Tech'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('G Commerce',),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SliderImages(),
              verticalSpace(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                  width: double.infinity,
                  height: heightMediaQuery(context),
                  child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 20.h,
                      children: list),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
