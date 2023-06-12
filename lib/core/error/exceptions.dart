
import 'package:moves_app/core/network/error_massage_model.dart';

class ServerExceptions implements Exception{
  final ErrorMassageModel errorMassageModel;

  ServerExceptions({required this.errorMassageModel});
}

class LocalDatabaseException implements Exception{
  final String message;

  LocalDatabaseException({required this.message});
}