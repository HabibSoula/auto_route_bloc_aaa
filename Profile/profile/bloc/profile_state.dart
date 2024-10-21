part of 'profile_bloc.dart';

@immutable
sealed class ProfileState {
const ProfileState();
}
class ProfileInitial extends ProfileState {}
class ProfileLoaded extends ProfileState {}
class ProfileFail extends ProfileState {}
