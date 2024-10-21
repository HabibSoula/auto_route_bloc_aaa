import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
const HomeView({super.key});
@override
Widget wrappedRoute(context) {
return BlocProvider(
create: (context) => HomeBloc(),
child: this, // this as the child Important!
);
}
@override
Widget build(BuildContext context) {
return BlocBuilder<HomeBloc, HomeState>(
     builder: (context, state) {
     return switch (state) {
        HomeInitial() => const Center(child: CircularProgressIndicator(),),
        HomeLoaded() => Builder(
          builder: (context) {
            return const SizedBox();
          }
        ),
        HomeFail() => const Center(child: CircularProgressIndicator(),),


};
},
);
}
}
