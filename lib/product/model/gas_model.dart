import 'package:json_annotation/json_annotation.dart';

part 'gas_model.g.dart';

@JsonSerializable()
class GasModel {
  List<Result>? result;
  String? lastupdate;
  bool? success;

  GasModel({this.result, this.lastupdate, this.success});

  factory GasModel.fromJson(Map<String, dynamic> json) {
    return _$GasModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GasModelToJson(this);
  }
}

@JsonSerializable()
class Result {
  String? marka;
  double? benzin;
  double? dizel;
  dynamic katkili;
  String? lpg;
  

  Result({this.marka, this.benzin, this.katkili});

  void get adasd {
    double.tryParse(benzin.toString()) ?? 0;
  }

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResultToJson(this);
  }
}
