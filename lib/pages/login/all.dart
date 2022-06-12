import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_app/pages/login/cubit/login_cubit.dart';
import 'package:shoes_app/pages/login/views/login_page.dart';

class LoginModule {
  static Widget buildRoute() {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: LoginPage(),
    );
  }
}
