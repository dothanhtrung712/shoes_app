import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoes_app/resources/colors.dart';
import 'package:shoes_app/resources/dimens.dart';
import 'package:shoes_app/resources/images.dart';

class ShoppingPage extends StatefulWidget {
  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        backgroundColor: ColorResources.pinkColor.shade300,
        title: Text('Giỏ hàng',
          style: TextStyle(
            fontSize: Dimens.size20,
            color: ColorResources.whiteColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Dimens.size14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Container(
                    padding: EdgeInsets.all(Dimens.size4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.size10),
                      border: Border.all(
                        color: ColorResources.greyColor.shade300,
                        width: Dimens.size1,
                      ),
                      color: ColorResources.greyColor.shade100,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.size10),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://kingshoes.vn/data/upload/media/adidas-falcon-pink-purple-bd78251-king-shoes-sneaker-real-hcm-1624253267.jpeg'
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade300,
                              width: Dimens.size1,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) *0.50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Falcon Pink',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimens.size18,
                                ),
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('3.000.000 đ',
                                    style: TextStyle(
                                      fontSize: Dimens.size18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('x1',
                                    style: TextStyle(
                                      fontSize: Dimens.size16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Text('MrC Shoes',
                                style: TextStyle(
                                  fontSize: Dimens.size18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Container(
                    padding: EdgeInsets.all(Dimens.size4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.size10),
                      border: Border.all(
                        color: ColorResources.greyColor.shade300,
                        width: Dimens.size1,
                      ),
                      color: ColorResources.greyColor.shade100,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.size10),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://kingshoes.vn/data/upload/media/adidas-pharrell-williams-hu-nmd-eg7737-chinh-hang-hcm-king-shoes-sneaker-authentic-hcm-1624249958.jpeg'
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade300,
                              width: Dimens.size1,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) *0.50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Solar Hu NMD',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimens.size18,
                                ),
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('6.500.000 đ',
                                    style: TextStyle(
                                      fontSize: Dimens.size18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('x1',
                                    style: TextStyle(
                                      fontSize: Dimens.size14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Text('MrC Shoes',
                                style: TextStyle(
                                  fontSize: Dimens.size18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Container(
                    padding: EdgeInsets.all(Dimens.size4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.size10),
                      border: Border.all(
                        color: ColorResources.greyColor.shade300,
                        width: Dimens.size1,
                      ),
                      color: ColorResources.greyColor.shade100,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.size10),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38g1p0s-2.png'
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade300,
                              width: Dimens.size1,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) *0.50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Old Skool Primary Check',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimens.size18,
                                ),
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('2.000.000 đ',
                                    style: TextStyle(
                                      fontSize: Dimens.size18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('x1',
                                    style: TextStyle(
                                      fontSize: Dimens.size14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Text('MrC Shoes',
                                style: TextStyle(
                                  fontSize: Dimens.size18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Container(
                    padding: EdgeInsets.all(Dimens.size4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.size10),
                      border: Border.all(
                        color: ColorResources.greyColor.shade300,
                        width: Dimens.size1,
                      ),
                      color: ColorResources.greyColor.shade100,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.size10),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/165431c-1.jpg'
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade300,
                              width: Dimens.size1,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: Dimens.size120,
                          width: (size.width - 30) *0.50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('All Star Wordmark 2.0',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimens.size18,
                                ),
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('1.500.000 đ',
                                    style: TextStyle(
                                      fontSize: Dimens.size18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('x1',
                                    style: TextStyle(
                                      fontSize: Dimens.size14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Dimens.size5,
                              ),
                              Text('MrC Shoes',
                                style: TextStyle(
                                  fontSize: Dimens.size18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: Dimens.size40,
                  width: Dimens.size380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.size20),
                    color: ColorResources.greyColor.shade100,
                    border: Border.all(
                      color: ColorResources.greyColor.shade300,
                      width: Dimens.size2
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Số lượng: 4 đôi',
                          style: TextStyle(
                            fontSize: Dimens.size18,
                            color: ColorResources.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Tổng: 13.000.000 đ',
                          style: TextStyle(
                            fontSize: Dimens.size18,
                            color: ColorResources.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
