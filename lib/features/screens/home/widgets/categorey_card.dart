import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/extensions.dart';
import 'package:g_commerce/core/routing/routes.dart';
import 'package:g_commerce/core/theming/text_styles.dart';

import '../../../../core/helper/shared_prefrence.dart';

class CategoreyCard extends StatelessWidget {
  const CategoreyCard(
      {super.key,
      required this.image,
      required this.categoreyName,
      required this.height,
      required this.width});
  final String image;
  final String categoreyName;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        context.pushNamed(Routes.categoryDetailsScreen,
            argument: categoreyName);
      },
      child: Container(
        width: width.w,
        height: height.h,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: .5),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
            ),
            Text(categoreyName, style: TextStyles.font18MediumBlack),
          ],
        ),
      ),
    );
  }
}
