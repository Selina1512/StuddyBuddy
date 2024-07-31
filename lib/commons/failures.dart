abstract class Failure {
  final String message;

  Failure(this.message);
}

class Error extends Failure {
  Error(super.message);
}