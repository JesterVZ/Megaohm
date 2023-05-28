import 'package:flutter/material.dart';
import 'package:megaohm_app/base/enums/data/averaging_level.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class ChooseDetailTypeDialog extends StatefulWidget {
  String title;
  ChooseDetailTypeDialog({super.key, required this.title});
  @override
  State<StatefulWidget> createState() => _ChooseDetailTypeDialogState();

  static Future<Discrete?> show(BuildContext context, String title) {
    return showDialog<Discrete?>(
        context: context,
        builder: (BuildContext context) => ChooseDetailTypeDialog(
              title: title,
            ));
  }
}

class _ChooseDetailTypeDialogState extends State<ChooseDetailTypeDialog> {
  Discrete? discrete = Discrete.hourly;
  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(
          widget.title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.black),
        ),
        content: Builder(
          builder: (context) {
            return _buildContent(context);
          },
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, discrete);
            },
            child: Text(AppLocalizations.of(context)!.accept),
          ),
        ],
      );
  _buildContent(BuildContext context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                AppLocalizations.of(context)!.hourly,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
              ),
              leading: Radio<Discrete>(
                  value: Discrete.hourly,
                  groupValue: discrete,
                  onChanged: (Discrete? value) {
                    setState(() {
                      discrete = value;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                AppLocalizations.of(context)!.daily,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
              ),
              leading: Radio<Discrete>(
                  value: Discrete.daily,
                  groupValue: discrete,
                  onChanged: (Discrete? value) {
                    setState(() {
                      discrete = value;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                AppLocalizations.of(context)!.monthly,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
              ),
              leading: Radio<Discrete>(
                  value: Discrete.monthly,
                  groupValue: discrete,
                  onChanged: (Discrete? value) {
                    setState(() {
                      discrete = value;
                    });
                  }),
            )
          ]);
}
