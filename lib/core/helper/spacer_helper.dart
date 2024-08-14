import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox horizontalSpace(double width) => SizedBox(width: width.w);
SizedBox verticalSpace(double height) => SizedBox(height: height.h);

double widthMediaQuery(context) => MediaQuery.of(context).size.width;
double heightMediaQuery(context) => MediaQuery.of(context).size.height;
