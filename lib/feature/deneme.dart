import 'package:flutter/material.dart';
import 'package:kac_yakar/product/service/gas_service.dart';
import 'package:kac_yakar/product/service/project_dio.dart';

import '../product/model/gas_model.dart';

class DenemeView extends StatefulWidget {
  const DenemeView({Key? key}) : super(key: key);

  @override
  State<DenemeView> createState() => _DenemeViewState();
}

class _DenemeViewState extends State<DenemeView> with ProjectDioMixin {
  late final IGasService gasService;
  List<Result?> resources = [];

  var isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gasService = GasService(service);
    _fetch();
  }

  void changeLoading() {
    isLoading = !isLoading;
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await gasService.fetchGasPrice())?.result ?? [];
    setState(() {});
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deneme"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: resources.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(resources[index]!.benzin.toString()),
                );
              },
            ),
    );
  }
}
