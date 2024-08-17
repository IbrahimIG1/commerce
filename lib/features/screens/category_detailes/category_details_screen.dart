import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/features/screens/category_detailes/widgets/search_bar.dart';
import 'package:g_commerce/features/screens/home/screen_ui/home_screen.dart';
import 'package:g_commerce/features/screens/home/widgets/categorey_card.dart';
import 'package:g_commerce/generated/l10n.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(txt),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(),
            verticalSpace(15),
            Container(
              width: double.infinity,
              height: 100.h,
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // border: Border.all(color: Colors.black)
                // color: Colors.amber,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: CategoreyCard(
                        height: 80,
                        width: 70,
                        image: 'assets/images/school_tools.jpg',
                        categoreyName: S.of(context).clothes_category),
                  );
                },
              ),
            ),
            verticalSpace(5),
            Divider(
              height: 1.h,
              color: Colors.black,
            ),
            verticalSpace(20),
            Container(
              width: double.infinity,
              height: heightMediaQuery(context),
              child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 20.h,
                  children: list(context)),
            )
          ],
        ),
      ),
    );
  }
}
