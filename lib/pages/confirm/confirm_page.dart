import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/resources/resources.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [

              Container(
                constraints: BoxConstraints(
                  maxWidth: size.width,
                  maxHeight: size.height,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorResources.primarycolor1,
                      ColorResources.primarycolor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: Dimens.size36, horizontal: Dimens.size24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LẬP PHIẾU THUÊ XE',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'LẬP PHIẾU THUÊ XE',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'LẬP PHIẾU THUÊ XE',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'LẬP PHIẾU THUÊ XE',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'LẬP PHIẾU THUÊ XE',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'LẬP PHIẾU THUÊ XE',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: Dimens.size10,
                              ),
                              Text(
                                'ĐỖ THÀNH TRUNG',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'ĐỖ THÀNH TRUNG',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'ĐỖ THÀNH TRUNG',
                                style: TextStyle(
                                  color: ColorResources.whiteColor,
                                  fontSize: Dimens.size22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorResources.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.size30),
                            topRight: Radius.circular(Dimens.size30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(Dimens.size24),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SỐ PHIẾU THUÊ XE',
                                  style: TextStyle(
                                    color: ColorResources.primarycolor,
                                    fontSize: Dimens.size20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimens.size10,
                                ),
                                SizedBox(
                                  height: Dimens.size10,
                                ),
                                // SizedBox(
                                //   height: Dimens.size30,
                                // ),
                                // Text('Password',
                                //   style: TextStyle(
                                //     color: ColorResources.primarycolor,
                                //     fontSize: Dimens.size20,
                                //     fontWeight: FontWeight.w500,
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: Dimens.size10,
                                // ),
                                // Padding(
                                //   padding: const EdgeInsets.symmetric(horizontal: Dimens.size2),
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(Dimens.size14),
                                //       boxShadow: [
                                //         BoxShadow(
                                //           color: ColorResources.primarycolor,
                                //           spreadRadius: Dimens.size2,
                                //           blurRadius: Dimens.size2,
                                //           offset: Offset(Dimens.size0, Dimens.size4),
                                //         ),
                                //       ],
                                //     ),
                                //     child: TextFormField(
                                //       keyboardType: TextInputType.visiblePassword,
                                //       decoration: InputDecoration(
                                //         border: OutlineInputBorder(
                                //           borderRadius:
                                //           BorderRadius.circular(Dimens.size14),
                                //           borderSide: BorderSide.none,
                                //         ),
                                //         filled: true,
                                //         fillColor: ColorResources.whiteColor,
                                //         hintText: 'Password',
                                //         hintStyle: TextStyle(
                                //           fontWeight: FontWeight.w700,
                                //         ),
                                //         prefixIcon: Icon(
                                //           Icons.lock,
                                //           color: ColorResources.primarycolor,
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: Dimens.size30,
                                // ),
                                // Text('Password',
                                //   style: TextStyle(
                                //     color: ColorResources.primarycolor,
                                //     fontSize: Dimens.size20,
                                //     fontWeight: FontWeight.w500,
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: Dimens.size10,
                                // ),
                                // Padding(
                                //   padding: const EdgeInsets.symmetric(horizontal: Dimens.size2),
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(Dimens.size14),
                                //       boxShadow: [
                                //         BoxShadow(
                                //           color: ColorResources.primarycolor,
                                //           spreadRadius: Dimens.size2,
                                //           blurRadius: Dimens.size2,
                                //           offset: Offset(Dimens.size0, Dimens.size4),
                                //         ),
                                //       ],
                                //     ),
                                //     child: TextFormField(
                                //       keyboardType: TextInputType.visiblePassword,
                                //       decoration: InputDecoration(
                                //         border: OutlineInputBorder(
                                //           borderRadius:
                                //           BorderRadius.circular(Dimens.size14),
                                //           borderSide: BorderSide.none,
                                //         ),
                                //         filled: true,
                                //         fillColor: ColorResources.whiteColor,
                                //         hintText: 'Password',
                                //         hintStyle: TextStyle(
                                //           fontWeight: FontWeight.w700,
                                //         ),
                                //         prefixIcon: Icon(
                                //           Icons.lock,
                                //           color: ColorResources.primarycolor,
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: Dimens.size30,
                                // ),
                                // Container(
                                //   alignment: Alignment.centerRight,
                                //   child: Text('Forgot Password',
                                //     style: TextStyle(
                                //       fontSize: Dimens.size16,
                                //       fontWeight: FontWeight.w700,
                                //     ),
                                //   ),
                                // ),
                                SizedBox(
                                  height: Dimens.size40,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: Dimens.size50,
                                  width: Dimens.size400,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Dimens.size14),
                                    color: ColorResources.primarycolor,
                                  ),
                                  child: Text(
                                    'LẬP PHIẾU',
                                    style: TextStyle(
                                      fontSize: Dimens.size22,
                                      fontWeight: FontWeight.w500,
                                      color: ColorResources.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: Dimens.size50,
                                  width: Dimens.size400,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Dimens.size14),
                                    color: ColorResources.primarycolor,
                                  ),
                                  child: Text(
                                    'LẬP PHIẾU',
                                    style: TextStyle(
                                      fontSize: Dimens.size22,
                                      fontWeight: FontWeight.w500,
                                      color: ColorResources.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: Dimens.size50,
                                  width: Dimens.size400,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Dimens.size14),
                                    color: ColorResources.primarycolor,
                                  ),
                                  child: Text(
                                    'LẬP PHIẾU',
                                    style: TextStyle(
                                      fontSize: Dimens.size22,
                                      fontWeight: FontWeight.w500,
                                      color: ColorResources.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: Dimens.size50,
                                  width: Dimens.size400,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Dimens.size14),
                                    color: ColorResources.primarycolor,
                                  ),
                                  child: Text(
                                    'LẬP PHIẾU',
                                    style: TextStyle(
                                      fontSize: Dimens.size22,
                                      fontWeight: FontWeight.w500,
                                      color: ColorResources.whiteColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimens.size10,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: Dimens.size50,
                                  width: Dimens.size400,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Dimens.size14),
                                    color: ColorResources.primarycolor,
                                  ),
                                  child: Text(
                                    'QUAY LẠI',
                                    style: TextStyle(
                                      fontSize: Dimens.size22,
                                      fontWeight: FontWeight.w500,
                                      color: ColorResources.whiteColor,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: Dimens.size50,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -20,
                top: Dimens.size110,
                child: Container(
                  height: Dimens.size250,
                  width: Dimens.size250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          Images.shoeslogin,
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
