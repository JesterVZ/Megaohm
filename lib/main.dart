import 'package:flutter/material.dart';
import 'package:megaohm_app/internal/injection_container.dart' as di;
import 'package:megaohm_app/presentation/pages/content/main_page.dart';
import 'package:megaohm_app/presentation/ui/app_colors.dart';
import 'package:megaohm_app/presentation/ui/app_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.startup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Megaohm',
      theme: ThemeData(
          primarySwatch: AppColors.appColors,
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColors.greyColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColors.appColors),
              )),
          textTheme: Theme.of(context).textTheme.copyWith(
              titleLarge: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 30, color: AppColors.whiteColor),
              titleMedium: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 20, color: AppColors.whiteColor),
              titleSmall: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 15, color: AppColors.whiteColor)),
          buttonTheme: ButtonThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppUI.borderRadius))),
          bottomAppBarTheme:
              BottomAppBarTheme(color: AppColors.appColors[400])),
      home: const MainPage(),
    );
  }
}
