import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:shoes_app/app/routers.dart';
import 'package:shoes_app/base/base_screen_state.dart';
import 'package:shoes_app/pages/login/cubit/login_cubit.dart';
import '../../../widgets/commons/commons.dart';
import '../../../resources/resources.dart';
part 'login_listener.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BaseScreenState<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  final String USER_NAME_KEY = 'username';
  final String PASSWORD_KEY = 'password';

  @override
  bool get allowPopScope => false;

  LoginCubit get bloc => BlocProvider.of<LoginCubit>(context);

  @override
  Widget buildContent(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocListener<LoginCubit, LoginState>(
      listener: _listener,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        Images.login,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              FormBuilder(
                key: _formKey,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: size.height / 5),
                      _buildUserNameField(size),
                      const SizedBox(height: 8),
                      _buildPasswordField(size),
                      const SizedBox(height: 8),
                      _buildLoginButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.size2,
      ),
      child: InkWell(
        onTap: () {
          _formKey.currentState?.validate();
          if (_formKey.currentState?.isValid ?? false) {
            bloc.onLoginPressed(
                _formKey.currentState?.fields[USER_NAME_KEY]!.value as String,
                _formKey.currentState?.fields[PASSWORD_KEY]!.value as String);
          }
        },
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
    );
  }

  Widget _buildPasswordField(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.size2,
      ),
      child: SizedBox(
        width: size.width / 1.3,
        child: FormBuilderTextField(
          name: PASSWORD_KEY,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.visiblePassword,
          // controller: _passwordController,
          onChanged: (value) {},
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(errorText: 'Vui lòng nhập mật khẩu'),
            FormBuilderValidators.minLength(6,
                errorText: 'Mật khẩu tối thiểu 6 kí tự'),
          ]),
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
            errorStyle: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
            contentPadding: EdgeInsets.only(left: 10),
          ),
        ),
      ),
    );
  }

  Widget _buildUserNameField(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.size2,
      ),
      child: SizedBox(
        width: size.width / 1.3,
        child: FormBuilderTextField(
          name: USER_NAME_KEY,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          // controller: _emailController,
          onChanged: (value) {},
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(errorText: 'Vui lòng nhập email'),
            FormBuilderValidators.email(errorText: 'Email không hợp lệ'),
          ]),
          style: TextStyle(color: ColorResources.blueColor),
          decoration: InputDecoration(
            errorStyle: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
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
            contentPadding: EdgeInsets.only(left: 10),
          ),
        ),
      ),
    );
  }
}
