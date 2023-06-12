import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class ServerFailure extends Failure {
 const  ServerFailure(super.message);
}

class DatabaseFailure extends Failure {
  const  DatabaseFailure(super.message);
}