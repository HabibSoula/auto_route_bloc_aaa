import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profile_bloc.dart';

@RoutePage()
class ProfileView extends StatelessWidget implements AutoRouteWrapper {
const ProfileView({super.key});
@override
Widget wrappedRoute(context) {
return BlocProvider(
create: (context) => ProfileBloc(),
child: this, // this as the child Important!
);
}
@override
Widget build(BuildContext context) {
return BlocBuilder<ProfileBloc, ProfileState>(
     builder: (context, state) {
     return switch (state) {
        ProfileInitial() => const Center(child: CircularProgressIndicator(),),
        ProfileLoaded() => Builder(
          builder: (context) {
            return const SizedBox();
          }
        ),
        ProfileFail() => const Center(child: CircularProgressIndicator(),),


};
},
);
}
}
