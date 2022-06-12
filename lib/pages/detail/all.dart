import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_app/pages/detail/cubit/detail_cubit.dart';
import 'package:shoes_app/pages/pages.dart';

class DetailModule {
  static Widget buildRoute() {
    return BlocProvider(
      create: (context) => DetailCubit(),
      child: DetailPage(),
    );
  }
}
