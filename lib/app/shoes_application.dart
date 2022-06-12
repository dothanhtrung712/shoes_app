import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_app/app/routers.dart';
import 'package:shoes_app/pages/detail/all.dart';
import 'package:shoes_app/pages/home/all.dart';
import 'package:shoes_app/pages/home/cubit/home_cubit.dart';
import 'package:shoes_app/pages/login/all.dart';
import 'package:shoes_app/pages/new/new_page.dart';
import 'package:shoes_app/pages/size/size_page.dart';
import 'package:shoes_app/pages/measuresize/measuresize.dart';
import '../../pages/pages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ShoesApplication extends StatelessWidget {
  const ShoesApplication();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRouters.splashPage,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale.fromSubtags(languageCode: 'en'),
      ],
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => HomeCubit())],
          child: child ?? Container(),
        );
      },
      routes: {
        MyRouters.splashPage: (context) => SplashPage(),
        MyRouters.advertisePage: (context) => AdvertisePage(),
        MyRouters.loginPage: (context) => LoginModule.buildRoute(),
        MyRouters.registerPage: (context) => RegisterPage(),
        MyRouters.homePage: (context) => HomeModule.buildRoute(),
        MyRouters.shoppingPage: (context) => ShoppingPage(),
        MyRouters.sizePage: (context) => SizePage(),
        MyRouters.newPage: (context) => NewPage(),
        MyRouters.cartPage: (context) => CartPage(),
        MyRouters.confirmPage: (context) => ConfirmPage(),
        MyRouters.measuresizePage: (context) => MeasureSize(),
        MyRouters.detailPage: (context) => DetailModule.buildRoute(),
      },
    );
  }
}
