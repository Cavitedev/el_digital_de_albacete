
import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type,Params>{

  Future<Either<Failure,Type>> call (Params params);
  
}

class NoParams extends Equatable{
  @override
  List<Object> get props => [];
}