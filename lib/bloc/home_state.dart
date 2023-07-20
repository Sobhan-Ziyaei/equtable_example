import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable{}


class InitialHome extends HomeState{
  @override
  List<Object?> get props => [];
}


class UpdatedHome extends HomeState{
  int counter ;
  UpdatedHome(this.counter);
  @override
  List<Object?> get props => [counter];
}