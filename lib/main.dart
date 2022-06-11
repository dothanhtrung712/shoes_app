import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/pages/measuresize/measuresize.dart';
import '../../pages/pages.dart';
import '../../routers/routers.dart';
import 'pages/new/new_page.dart';
import 'pages/size/size_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRouters.homePage,
      routes: {
        MyRouters.splashPage: (context) => SplashPage(),
        MyRouters.advertisePage: (context) => AdvertisePage(),
        MyRouters.loginPage: (context) => LoginPage(),
        MyRouters.registerPage: (context) => RegisterPage(),
        MyRouters.homePage: (context) => HomePage(),
        MyRouters.shoppingPage: (context) => ShoppingPage(),
        MyRouters.sizePage: (context) => SizePage(),
        MyRouters.newPage: (context) => NewPage(),
        MyRouters.cartPage: (context) => CartPage(),
        MyRouters.confirmPage: (context) => ConfirmPage(),
        MyRouters.measuresizePage: (context) => MeasureSize(),
        MyRouters.detailPage: (context) => DetailPage(
              image: '',
              description: '',
              money: '1',
              name: '',
              status: '',
              id: 1,
              imageList: [
                '',
                '',
                '',
              ],
            ),
      },
    );
  }
}
