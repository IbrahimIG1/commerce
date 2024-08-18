import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/theming/text_styles.dart';
import 'package:g_commerce/generated/l10n.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: SearchBar(
        backgroundColor: WidgetStateProperty.all(Colors.white),
        elevation: WidgetStateProperty.all(3),
        hintText: S.of(context).search_bar,
        hintStyle: WidgetStateProperty.all(TextStyles().font14LightBlack),
        padding: WidgetStateProperty.all(EdgeInsets.only(
            right: isArabic() ? 15.w : 0, left: isArabic() ? 0 : 10.w)),
        leading: Icon(
          Icons.search,
          size: 20.w,
          color: Colors.black38,
        ),
      ),
    );
  }
}
