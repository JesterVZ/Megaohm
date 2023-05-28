import 'package:megaohm_app/base/enums/data/averaging_level.dart';

extension ParseToString on Discrete {
  String toShortString() => toString().split('.').last;
}

extension ParseDate on DateTime {
  String toShortString() => toString().split(' ').first;
}
