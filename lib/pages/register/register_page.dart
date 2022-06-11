import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/resources/dimens.dart';
import 'package:shoes_app/routers/routers.dart';
import 'package:shoes_app/widgets/commons/commons.dart';
import '../../resources/resources.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPassword = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _rePasswordController = TextEditingController();
  late String _fullName,_email,_password,_rePassword;
  GlobalKey<FormState> _key = GlobalKey();


  Future<void> _signUp() async{
    if(_key.currentState!.validate()){
      Navigator.pushNamed(context, MyRouters.homePage);
    }
    final result = await _auth.createUserWithEmailAndPassword(email:_email, password: _password);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.pinkColor.shade300,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorResources.whiteColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Container(
            child: Stack(alignment: Alignment.center, children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Images.registerPage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                        keyboardType: TextInputType.name,
                        controller: _fullNameController,
                        onChanged: (value) => _fullName = value,
                        validator: (value){
                          if(value!.isEmpty || value?.length == 0){
                            return 'Họ và tên không hợp lệ';
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
                          hintText: 'Nhập Họ và Tên...',
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
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        onChanged: (value) => _email = value,
                        validator: (value){
                          if(value!.isEmpty || value?.length == 0 || !value.contains('@')){
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
                          hintText: 'Nhập mail...',
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
                        onChanged: (value) => _password = value,
                        validator: (value){
                          if(value!.isEmpty || value?.length == 0){
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
                    child: SizedBox(
                      width: size.width / 1.3,
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.visiblePassword,
                        controller: _rePasswordController,
                        onChanged: (value) => _rePassword = value,
                        validator: (value){
                          if(_password != _rePassword){
                            return 'Mat khau khong khop';
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
                          hintText: 'Nhập lại mật khẩu...',
                          hintStyle: TextStyle(
                            color: ColorResources.blueColor,
                            fontSize: Dimens.size18,
                          ),
                          contentPadding: UIHelpers.paddingT8,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => _signUp(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: Dimens.size2,
                      ),
                      child: CustomContainer(
                        title: 'Đăng ký',
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
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
