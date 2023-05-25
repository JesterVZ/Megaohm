enum Discrete { hourly, daily, monthly }

extension ParseToString on Discrete {
  String toShortString() {
    return toString().split('.').last;
  }
}
