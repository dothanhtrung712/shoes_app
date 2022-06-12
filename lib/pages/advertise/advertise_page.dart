import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/app/routers.dart';
import '../../widgets/widgets.dart';
import '../../resources/resources.dart';

class AdvertisePage extends StatelessWidget {
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
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.backgroundAdvertisePage,
              width: size.width,
              height: size.height / Dimens.size2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    Dimens.size16,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(
                      context,
                      MyRouters.loginPage,
                    ),
                    child: CustomContainer(
                      borderRadius: Dimens.size20,
                      backgroundColor: ColorResources.whiteColor,
                      title: 'Login',
                      borderColor: ColorResources.pinkColor.shade200,
                      paddingHorizontal: Dimens.size30,
                      paddingVertical: Dimens.size12,
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.size18,
                        color: ColorResources.blueColor,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(
                    context,
                    MyRouters.registerPage,
                  ),
                  child: CustomContainer(
                    borderRadius: Dimens.size20,
                    backgroundColor: ColorResources.whiteColor,
                    title: 'Register',
                    borderColor: ColorResources.pinkColor.shade200,
                    paddingHorizontal: Dimens.size30,
                    paddingVertical: Dimens.size12,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size18,
                      color: ColorResources.blueColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
