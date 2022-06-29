import 'package:flutter/cupertino.dart';

import '../../../product/model/gas_model.dart';
import '../service/gas_service.dart';

class SplashProvider extends ChangeNotifier {
  SplashProvider(this.gasService) {
    // _fetch(); // TODO: uncomment this line to fetch data
  }

  final IGasService gasService;

  bool isLoading = false;

  List<Result?> gasResource = [];
  List<Result?> dieselResource = [];
  List<Result?> lpgResource = [];

  late double? dieselPrice = dieselResource[7]?.dizel ?? 30.0;
  late double? gasPrice = gasResource[5]?.benzin ?? 28.00;
  late double? lpgPrice = double.parse(lpgResource[12]?.lpg ?? "13.00");

  Future<void> _fetch() async {
    changeLoading();
    dieselResource = (await gasService.fetchDieselPrice())?.result ?? [];
    gasResource = (await gasService.fetchGasPrice())?.result ?? [];
    lpgResource = (await gasService.fetchLpgPrice())?.result ?? [];
    changeLoading();
    notifyListeners();
  }

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
