abstract class ICar {
  final String make;
  final String model;
  final String body;
  final String trim;
  final String modelYear;

  ICar(this.make, this.model, this.body, this.trim, this.modelYear);
}

class Toyota extends ICar {
  Toyota({String make = "Toyota", String model, String body, String trim, String modelYear})
      : super(make, model, body, trim, modelYear);

  List<Toyota> toyotaList = [
    Toyota(
      make: "Toyota",
      model: "Corolla",
      body: "Sedan",
      trim: "Base",
      modelYear: "2020",
    ),
  ];
}
