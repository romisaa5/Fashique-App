abstract class Failure {
  final String errorMassege;

  Failure({required this.errorMassege});
}

class ServicesFailure extends Failure {
  ServicesFailure({required super.errorMassege});
}
