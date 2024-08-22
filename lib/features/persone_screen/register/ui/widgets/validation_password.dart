import 'package:flutter/material.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/theming/color.dart';
import 'package:g_commerce/core/theming/text_styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLenght;
  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLenght,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidaion('At least 1 lowercase letter', hasLowerCase),
        buildValidaion(
            'At least 1 hasSpecial Character letter', hasSpecialCharacters),
        buildValidaion('At least 1 uppercase letter', hasUpperCase),
        buildValidaion('At least 1 Number', hasNumber),
        buildValidaion('At least 8 characters long', hasMinLenght),
      ],
    );
  }

  Widget buildValidaion(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.grey,
        ),
        horizontalSpace(16),
        Text(text,
            style: TextStyles.font13GreyDarkRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color: hasValidated ? ColorsManager.grey : ColorsManager.greyDark,
            )),
      ],
    );
  }
}