import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/theming/text_styles.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(alignment: Alignment.centerLeft, children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            text,
            style: TextStyles.font18BoldWhite,
          ),
        )
      ]),
    );
  }
}
