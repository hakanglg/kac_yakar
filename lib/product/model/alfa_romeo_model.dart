import 'package:kac_yakar/product/model/cars_model.dart';

class AlfaRomeoModel extends ICarModel {
  final AlfaRomeoModels model;

  AlfaRomeoModel({
    MakeModels make = MakeModels.AlfaRomeo,
    required double urbanFuel,
    required double ecoFuel,
    required double averageFuel,
    required BodyModels body,
    required String trim,
    required String modelYear,
    required this.model,
  }) : super(make, body, trim, modelYear, urbanFuel, ecoFuel, averageFuel);
}

const String oneHundredFortySeven = "147";
const String oneHundredFiftySix = "156";
const String oneHundredFiftyNine = "159";
const String fourC = "4C";

enum AlfaRomeoModels {
  oneHundredFortySeven,
  oneHundredFiftySix,
  oneHundredFiftyNine,
  fourC,
  Brera,
  Giulia,
  Giulietta,
  GT,
  MiTo,
  Stelvio
}
