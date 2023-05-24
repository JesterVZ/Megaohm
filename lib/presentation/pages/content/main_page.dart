import 'package:flutter/material.dart';
import 'package:megaohm_app/presentation/ui/app_ui.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppUI.appBar(context: context, title: "Умные теплицы"),
        body: Container(),
      );
}
