import 'package:flutter/material.dart';

/// Константы для унификации UI (отступы, стили).
class AppUI {
  static const _paddingZero = 0.0;
  static const _paddingXS = 8.0;
  static const _paddingS = 12.0;
  static const _padding = 16.0;
  static const formPadding = EdgeInsets.all(_padding);
  static const radiusBottomSheet = 16.0;

  static const appSpacing1 = SizedBox(
    height: _padding,
  );

  static const bottomSheetPadding = EdgeInsets.only(
    left: _paddingXS,
    right: _padding,
    top: _paddingXS,
    bottom: _paddingXS,
  );

  static const appSpacing2 = SizedBox(
    height: 33,
  );

  static const borderRadius = 5.0;

  static const bottomSheetRadius = Radius.circular(radiusBottomSheet);

  static const bottomSheetTitleDivider = Divider(
    height: _paddingZero,
    thickness: 1.0,
  );

  static const bottomSheetContentPadding = EdgeInsets.symmetric(
    vertical: _paddingXS,
    horizontal: _padding,
  );

  static const textFieldInputBorder = OutlineInputBorder();

  static const contentHorizontalSpacing = SizedBox(width: _padding);
  static const contentHorizontalSpacingSmall = SizedBox(width: _paddingS);
  static const contentHorizontalSpacingExtraSmall = SizedBox(width: _paddingXS);
  static const contentVerticalSpacing = SizedBox(height: _padding);
  static const contentVerticalSpacingExtraSmall = SizedBox(height: _paddingXS);

  static appBar(
      {required BuildContext context,
      required String title,
      List<Widget>? actions}) {
    return AppBar(
      //backgroundColor: AppColors.appcolors,
      centerTitle: false,
      title: Text(title),
      titleTextStyle: Theme.of(context).textTheme.titleMedium,
      actions: actions,
    );
  }
}
