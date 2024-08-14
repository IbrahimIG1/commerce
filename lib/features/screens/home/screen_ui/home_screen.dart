import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/theming/text_styles.dart';
import 'package:g_commerce/features/screens/home/widgets/categorey_card.dart';
import 'package:g_commerce/features/screens/home/widgets/slider_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(viewportFraction: .85);
  double currentImage = 0.0;
  double scaleFactor = 0.8;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      print("pageController Lisener");
      currentImage = pageController.page!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SliderImages(),
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
}
