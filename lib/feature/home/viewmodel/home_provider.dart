import 'package:flutter/cupertino.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../product/components/modal_sheet/custom_modal_sheet_view.dart';
import '../../../product/model/alfa_romeo_model.dart';
import '../../../product/model/cars_model.dart';

class HomeProvider extends ChangeNotifier with BaseState {
  void showBottomSheet(BuildContext context, String title) {
    showMaterialModalBottomSheet(
      expand: true,
      bounce: true,
      barrierColor: colorConstants.lightShark,
      context: context,
      builder: (context) => CustomModelSheetView(title: title),
    );
  }

  final List<AlfaRomeoModel> alfaRomeoList = [
    AlfaRomeoModel(
        urbanFuel: 11.2,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark (120 hp)",
        modelYear: "2006",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.2,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark (120 hp)",
        modelYear: "2007",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.2,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark (120 hp)",
        modelYear: "2008",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.2,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark (120 hp)",
        modelYear: "2009",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.2,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark (120 hp)",
        modelYear: "2010",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark Eco (105 hp)",
        modelYear: "2006",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark Eco (105 hp)",
        modelYear: "2007",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark Eco (105 hp)",
        modelYear: "2008",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark Eco (105 hp)",
        modelYear: "2009",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 16V T.Spark Eco (105 hp)",
        modelYear: "2010",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 TS 16V (105 hp)",
        modelYear: "2006",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 TS 16V (105 hp)",
        modelYear: "2007",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 TS 16V (105 hp)",
        modelYear: "2008",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 TS 16V (105 hp)",
        modelYear: "2009",
        model: AlfaRomeoModels.oneHundredFortySeven),
    AlfaRomeoModel(
        urbanFuel: 11.3,
        ecoFuel: 6.4,
        averageFuel: 8.2,
        body: BodyModels.Hatchback,
        trim: "1.6 TS 16V (105 hp)",
        modelYear: "2010",
        model: AlfaRomeoModels.oneHundredFortySeven),
  ];
}
