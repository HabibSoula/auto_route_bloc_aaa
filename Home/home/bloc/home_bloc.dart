import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
HomeBloc() : super(HomeLoaded()) {
on<HomeEvent>((event, emit) {
// TODO: implement event handler
});
}
}