part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.init() = LoginInitial;
  const factory LoginState.loading(bool isLoading) = LoadingState;
  const factory LoginState.exception(String message, String code) =
      LoginExceptionState;
  const factory LoginState.success() = LoginSuccessState;
  const factory LoginState.failed(String message) = LoginFailedState;
}
