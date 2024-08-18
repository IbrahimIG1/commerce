import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/features/user_screens/home/widgets/categorey_card.dart';
import 'package:g_commerce/features/user_screens/home/widgets/slider/slider_images.dart';
import 'package:g_commerce/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
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
                      children: list(context)),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
List<Widget> list(context) => [
      CategoreyCard(
          height: 100,
          width: 100,
          image: 'assets/images/school_tools.jpg',
          categoreyName: S.of(context).clothes_category),
      CategoreyCard(
          height: 100,
          width: 100,
          image: 'assets/images/school_tools.jpg',
          categoreyName: S.of(context).clinics_category),
      CategoreyCard(
          height: 100,
          width: 100,
          image: 'assets/images/school_tools.jpg',
          categoreyName: S.of(context).food_category),
      CategoreyCard(
          height: 100,
          width: 100,
          image: 'assets/images/school_tools.jpg',
          categoreyName: S.of(context).tech_category),
    ];