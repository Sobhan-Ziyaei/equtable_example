import 'package:bloc/bloc.dart';
import 'package:equtable_example/bloc/home_event.dart';
import 'package:equtable_example/bloc/home_state.dart';

class HomeBloc extends Bloc<ClickEvent, HomeState> {
  int counter = 0 ;
  HomeBloc() : super(InitialHome()) {
    on<ClickEvent>((event, emit) {
      emit(UpdatedHome(10));
    });
  }
}
