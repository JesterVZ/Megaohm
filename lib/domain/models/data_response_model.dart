import 'package:megaohm_app/domain/models/air_model.dart';

class DataResponseModel {
  AirModel air;
  String ts;
  DateTime? isoDateTime;
  DataResponseModel({required this.air, required this.ts, this.isoDateTime});
}
