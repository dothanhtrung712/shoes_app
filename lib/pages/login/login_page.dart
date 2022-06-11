import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../widgets/commons/commons.dart';
import '../../resources/resources.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState(email: '', password: '');
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey();
  String email, password;
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool _showPassword = true;

  _LoginPageState({
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorResources.pinkColor.shade300,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorResources.whiteColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Form(
          key: _globalKey,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Images.login,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: Dimens.size300,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimens.size2,
                    ),
                    child: SizedBox(
                      width: size.width / 1.3,
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        onChanged: (value) => email = value,
                        validator: (value){
                          if(value!.isEmpty ||
                              value!.length == 0 ||
                              !value.contains('@')){
                            return 'Email khong hop le';
                          }
                        },
                        style: TextStyle(color: ColorResources.blueColor),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              Dimens.size24,
                            ),

                          ),
                          filled: true,
                          fillColor: ColorResources.whiteColor,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: ColorResources.blueColor,
                          ),
                          hintText: 'Nhập tài khoản...',
                          hintStyle: TextStyle(
                            color: ColorResources.blueColor,
                            fontSize: Dimens.size18,
                          ),
                          contentPadding: UIHelpers.paddingT8,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimens.size2,
                    ),
                    child: SizedBox(
                      width: size.width / 1.3,
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.visiblePassword,
                        controller: _passwordController,
                        onChanged: (value) => password = value,
                        validator: (value){
                          if(value!.length < 6){
                            return 'Mat khau khong hop le';
                          }
                        },
                        style: TextStyle(color: ColorResources.blueColor),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              Dimens.size24,
                            ),

                          ),
                          filled: true,
                          fillColor: ColorResources.whiteColor,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: ColorResources.blueColor,
                          ),
                          hintText: 'Nhập mật khẩu...',
                          hintStyle: TextStyle(
                            color: ColorResources.blueColor,
                            fontSize: Dimens.size18,
                          ),
                          contentPadding: UIHelpers.paddingT8,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimens.size2,
                    ),
                    child: CustomContainer(
                      title: 'Đăng nhập',
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.size16,
                        color: ColorResources.pinkColor,
                      ),
                      backgroundColor: ColorResources.whiteColor,
                      borderColor: ColorResources.pinkColor,
                      borderRadius: Dimens.size100,
                      paddingHorizontal: Dimens.size30,
                      paddingVertical: Dimens.size12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
