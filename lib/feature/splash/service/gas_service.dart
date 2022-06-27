import 'dart:io';

import 'package:dio/dio.dart';

import '../../../product/model/gas_model.dart';

abstract class IGasService {
  IGasService(this.dio);
  final Dio dio;

  Future<GasModel?> fetchGasPrice();
  Future<GasModel?> fetchDieselPrice();
  Future<GasModel?> fetchLpgPrice();
}

enum _GasPath { gasPrice }

enum _CategoryPath { turkeyGasoline, turkeyDiesel, turkeyLpg }

enum _CityPath { istanbul, ankara }

class GasService extends IGasService {
  GasService(super.dio);

  @override
  Future<GasModel?> fetchGasPrice() async {
    final response = await dio.get(
        "/${_GasPath.gasPrice.name}/${_CategoryPath.turkeyGasoline.name}?&city=${_CityPath.istanbul.name}");

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return GasModel.fromJson(jsonBody);
      }
    }
    return null;
  }

  @override
  Future<GasModel?> fetchDieselPrice() async {
    final response = await dio.get(
        "/${_GasPath.gasPrice.name}/${_CategoryPath.turkeyDiesel.name}?&city=${_CityPath.istanbul.name}");

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return GasModel.fromJson(jsonBody);
      }
    }
    return null;
  }

  @override
  Future<GasModel?> fetchLpgPrice() async {
    final response = await dio.get(
        "/${_GasPath.gasPrice.name}/${_CategoryPath.turkeyLpg.name}?&city=${_CityPath.ankara.name}");

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return GasModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
