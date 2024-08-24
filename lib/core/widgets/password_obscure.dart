import 'package:flutter/material.dart';

Widget passwordObscure({required bool isObscure, required Function onTap}) => GestureDetector(
    onTap: () {
      onTap();
    },
    child: Icon(isObscure ? Icons.visibility : Icons.visibility_off));
