import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../theme/theme.dart';

enum Status {
  primary,
  secondary,
}

Map<Status, Theming> theming = {
  Status.primary: Theming(
    buttonStyle: primaryBtnStyle,
    iconColor: Colors.white,
    disabledIconColor: CustomTheme.neutral[5],
    textStyle: primaryTextStyle,
  ),
  Status.secondary: Theming(
    buttonStyle: secondaryBtnStyle,
    iconColor: const Color(0xff22252D),
    disabledIconColor: CustomTheme.neutral[5],
    textStyle: secondaryTextStyle,
  ),
};

class CustomButton extends StatelessWidget {
  final String label;
  final IconData? leading;
  final IconData? trailing;
  final void Function()? onPressed;
  final Status status;

  const CustomButton({
    Key? key,
    required this.label,
    this.leading,
    this.trailing,
    this.onPressed,
    this.status = Status.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: theming[status]!.buttonStyle,
      onPressed: onPressed,
      child: PaddedRow(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                leading,
                size: 20,
                color: onPressed != null
                    ? theming[status]!.iconColor
                    : theming[status]!.disabledIconColor,
              ),
            ),
          Text(
            label,
            style: onPressed != null
                ? theming[status]!.textStyle
                : theming[status]!
                    .textStyle!
                    .copyWith(color: Colors.grey.shade500),
          ),
          if (trailing != null)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                trailing,
                size: 20,
                color: onPressed != null
                    ? theming[status]!.iconColor
                    : theming[status]!.disabledIconColor,
              ),
            ),
        ],
      ),
    );
  }
}

final ButtonStyle primaryBtnStyle = ButtonStyle(
    padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
    minimumSize: MaterialStateProperty.all(const Size(120, 56)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // <-- Radius
    )),
    // primary: CustomTheme.redColor,
    backgroundColor:
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return CustomTheme.neutral[4];
      }
      return CustomTheme.redColor;
    }),
    elevation: MaterialStateProperty.all(0));

final ButtonStyle secondaryBtnStyle = ButtonStyle(
    padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
    minimumSize: MaterialStateProperty.all(const Size(120, 56)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // <-- Radius
    )),
    side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return BorderSide(width: 2, color: Colors.grey.shade400);
      }
      return const BorderSide(width: 2, color: Color(0xff7F8596));
    }),
    backgroundColor:
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      return Colors.white;
    }),
    elevation: MaterialStateProperty.all(0));

final TextStyle primaryTextStyle = CustomTheme.base1;
final TextStyle secondaryTextStyle =
    CustomTheme.base1.copyWith(color: const Color(0xff22252D));
