// 1
import 'package:feedbook/core/bloc/home_page_bloc.dart';
import 'package:flutter/material.dart';

class BlocProvider extends InheritedWidget {
  final Widget child;
  final HomePageBloc bloc;

  const BlocProvider({
    required this.bloc,
    required this.child,
  }) : super(child: child);

  static BlocProvider of<HomePageBlocc>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BlocProvider>()!;
  }

  @override
  bool updateShouldNotify(BlocProvider old) {
    return true;
  }
}
