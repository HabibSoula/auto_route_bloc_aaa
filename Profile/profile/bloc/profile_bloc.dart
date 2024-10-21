import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';


part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
ProfileBloc() : super(ProfileLoaded()) {
on<ProfileEvent>((event, emit) {
// TODO: implement event handler
});
}
}