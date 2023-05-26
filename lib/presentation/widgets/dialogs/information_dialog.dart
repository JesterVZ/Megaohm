import 'package:flutter/material.dart';

class InformationDialog {
  static Future show(BuildContext context, String title, String description) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.black),
        ),
        content: Text(
          description,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.black),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Продолжить'),
          ),
        ],
      ),
    );
  }
}
