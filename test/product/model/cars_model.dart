void main(List<String> args) {
  // final model1 = CarModel("Toyota", "Corolla", "Sedan", " 1.4", "2012");

  final carItems = [
    CarModel(MakeModels.Toyota, ModelModels.Corolla, FuelModels.Diesel,
        BodyModels.Sedan, "1.4 D", "2012"),
    CarModel(MakeModels.Bmw, ModelModels.i8, FuelModels.Diesel,
        BodyModels.Sedan, "2.4 D", "2019"),
    CarModel(MakeModels.Audi, ModelModels.A6, FuelModels.Diesel,
        BodyModels.Sedan, "1.4 D", "2012"),
    CarModel(MakeModels.Mercedes, ModelModels.S500, FuelModels.Diesel,
        BodyModels.Sedan, "1.4 D", "2020"),
  ];

  final resultCont =
      carItems.where((element) => element.make == MakeModels.Toyota);

  final newItem = CarModel(MakeModels.Mercedes, ModelModels.S500,
          FuelModels.Diesel, BodyModels.Sedan, "1.4 D", "2020"),
      isHaveCar = carItems.contains(newItem);

  if (isHaveCar) {
    print("Have car");
  } else {
    print("Don't have car");
  }
}

class CarModel {
  final MakeModels make;
  final ModelModels model;
  final FuelModels fuel;
  final BodyModels body;
  final String trim;
  final String modelYear;

  CarModel(
      this.make, this.model, this.fuel, this.body, this.trim, this.modelYear);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CarModel &&
      other.make == make &&
      other.model == model &&
      other.fuel == fuel &&
      other.body == body &&
      other.trim == trim &&
      other.modelYear == modelYear;
  }

  @override
  int get hashCode {
    return make.hashCode ^
      model.hashCode ^
      fuel.hashCode ^
      body.hashCode ^
      trim.hashCode ^
      modelYear.hashCode;
  }
}

enum MakeModels { Toyota, Bmw, Audi, Mercedes, Ford, Honda }

enum ModelModels { Corolla, i8, A6, S500, Mustang, Civic }

enum BodyModels {
  Sedan,
  Hatchback,
  Coupe,
  SUV,
  Convertible,
}

enum FuelModels { Gasoline, Diesel, LPG, Electric, Hybrid }
