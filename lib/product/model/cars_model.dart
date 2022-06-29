void main(List<String> args) {
  // final model1 = CarModel("Toyota", "Corolla", "Sedan", " 1.4", "2012");

  // final carItems = [
  //   CarModel(MakeModels.Toyota, ModelModels.Corolla, double.Diesel,
  //       BodyModels.Sedan, "1.4 D", "2012"),
  //   CarModel(MakeModels.Bmw, ModelModels.i8, double.Diesel,
  //       BodyModels.Sedan, "2.4 D", "2019"),
  //   CarModel(MakeModels.Audi, ModelModels.A6, double.Diesel,
  //       BodyModels.Sedan, "1.4 D", "2012"),
  //   CarModel(MakeModels.Mercedes, ModelModels.S500, double.Diesel,
  //       BodyModels.Sedan, "1.4 D", "2020"),
  // ];

  // final resultCont =
  //     carItems.where((element) => element.make == MakeModels.Toyota);

  // final newItem = CarModel(MakeModels.Mercedes, ModelModels.S500,
  //         double.Diesel, BodyModels.Sedan, "1.4 D", "2020"),
  //     isHaveCar = carItems.contains(newItem);

  // if (isHaveCar) {
  //   print("Have car");
  // } else {
  //   print("Don't have car");
  // }

  // final List<ToyotaModel> ToyotaList = [
  //   ToyotaModel(
  //       model: ToyotaModels.Corolla,
  //       fuel: 4.3,
  //       body: BodyModels.Sedan,
  //       trim: "1.4 D",
  //       modelYear: "2012"),
  // ];
}

abstract class ICarModel {
  final MakeModels? make;
  final double urbanFuel;
  final double ecoFuel;
  final double averageFuel;
  final BodyModels body;
  final String trim;
  final String modelYear;

  ICarModel(this.make, this.body, this.trim, this.modelYear, this.urbanFuel,
      this.ecoFuel, this.averageFuel);
}

class ToyotaModel extends ICarModel {
  final ToyotaModels model;

  ToyotaModel({
    MakeModels make = MakeModels.Toyota,
    required double urbanFuel,
    required double ecoFuel,
    required double averageFuel,
    required BodyModels body,
    required String trim,
    required String modelYear,
    required this.model,
  }) : super(make, body, trim, modelYear, urbanFuel, ecoFuel, averageFuel);
}

enum MakeModels {
  AlfaRomeo,
  Audi,
  BMW,
  Chevrolet,
  Citroen,
  Dacia,
  Ferrari,
  Fiat,
  Ford,
  Honda,
  Hyundai,
  Jaguar,
  Jeep,
  Kia,
  LandRover,
  Mazda,
  Mercedes,
  Mini,
  Nissan,
  Opel,
  Peugeot,
  Porsche,
  Renault,
  Seat,
  Skoda,
  Subaru,
  Tesla,
  Toyota,
  Volkswagen,
  Volvo
}

enum BodyModels {
  Sedan,
  Hatchback,
  Coupe,
  SUV,
  Convertible,
}

// ignore: constant_identifier_names
enum ToyotaModels { Corolla, i8, A6, S500, Mustang, Civic }
