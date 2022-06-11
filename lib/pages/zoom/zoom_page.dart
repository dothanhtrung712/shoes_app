import 'package:flutter/material.dart';
import 'package:shoes_app/resources/resources.dart';

class ZoomPage extends StatelessWidget {
  final String image;

  const ZoomPage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.pinkColor.shade300,
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          color: ColorResources.whiteColor,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: Dimens.size30,
                left: Dimens.size10,
                child: IconButton(
                  iconSize: 25,
                  splashRadius: 25,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: ColorResources.blackColor,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
