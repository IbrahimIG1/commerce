import 'package:flutter/material.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/theming/color.dart';
import 'package:g_commerce/core/theming/text_styles.dart';
import 'package:g_commerce/generated/l10n.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).password_validation,
            style: TextStyles.font14BoldBlack),
        buildValidaion(S.of(context).lowercase_validation, hasLowerCase),
        buildValidaion(S.of(context).special_character, hasSpecialCharacters),
        buildValidaion(S.of(context).uppercase_validation, hasUpperCase),
        buildValidaion(S.of(context).number, hasNumber),
        buildValidaion(S.of(context).at_least_8_character, hasMinLenght),
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
