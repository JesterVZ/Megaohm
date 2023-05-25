import 'package:flutter/material.dart';

/// Константы для унификации UI (отступы, стили).
class AppUI {
  static const _padding = 16.0;
  static const formPadding = EdgeInsets.all(_padding);

  static const appSpacing1 = SizedBox(
    height: _padding,
  );

  static const appSpacing2 = SizedBox(
    height: 33,
  );

  static const borderRadius = 5.0;

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
