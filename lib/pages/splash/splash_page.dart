import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoes_app/app/routers.dart';
import '../../resources/resources.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushNamed(context, MyRouters.loginPage);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink.shade200,
              Colors.blue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.logo,
              width: size.width,
              height: size.height / Dimens.size2,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                ColorResources.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
