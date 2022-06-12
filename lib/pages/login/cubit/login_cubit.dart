import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoes_app/domain/exception/exception_code.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> onLoginPressed(String userName, String password) async {
    emit(LoadingState(true));
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: userName, password: password);
      if (credential.user != null) {
        emit(LoginSuccessState());
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == ExceptionCode.USER_NOT_FOUND) {
        emit(LoginState.failed('Email đã nhập không tồn tại'));
      } else if (error.code == ExceptionCode.WRONG_PASSWORD) {
        emit(LoginState.failed('Sai mật khẩu'));
      }
    }
    emit(LoadingState(false));
  }
}
