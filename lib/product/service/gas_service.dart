import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kac_yakar/product/model/gas_model.dart';

abstract class IGasService {
  IGasService(this.dio);
  final Dio dio;

  Future<GasModel?> fetchGasPrice();
}

enum _GasPath { gasPrice }

enum _CountryPath { turkeyGasoline }

enum _CityPath { istanbul }

class GasService extends IGasService {
  GasService(super.dio);

  @override
  Future<GasModel?> fetchGasPrice() async {
    final response = await dio.get(
        "/${_GasPath.gasPrice.name}/${_CountryPath.turkeyGasoline.name}?&city=${_CityPath.istanbul.name}");

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return GasModel.fromJson(jsonBody);
      }
    }
    return null;

    // try {
    //   final response = await dio.get(
    //       "/${_GasPath.gasPrice.name}/${_CountryPath.turkeyGasoline.name}?&city=${_CityPath.istanbul.name}");

    //   GasModel gasModel = GasModel.fromJson(response.data);
    //   return gasModel.result;
    // } catch (e) {
    //   print(e);
    // }
    // return null;
  }
}
