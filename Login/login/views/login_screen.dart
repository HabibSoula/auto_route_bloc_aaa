import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

@RoutePage()
class LoginView extends StatelessWidget implements AutoRouteWrapper {
const LoginView({super.key});
@override
Widget wrappedRoute(context) {
return BlocProvider(
create: (context) => LoginBloc(),
child: this, // this as the child Important!
);
}
@override
Widget build(BuildContext context) {
return BlocBuilder<LoginBloc, LoginState>(
     builder: (context, state) {
     return switch (state) {
        LoginInitial() => const Center(child: CircularProgressIndicator(),),
        LoginLoaded() => Builder(
          builder: (context) {
            return const SizedBox();
          }
        ),
        LoginFail() => const Center(child: CircularProgressIndicator(),),


};
},
);
}
}
