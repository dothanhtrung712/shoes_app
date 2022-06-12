part of 'login_page.dart';

extension LoginListener on _LoginPageState {
  void _listener(BuildContext context, LoginState state) {
    state.maybeWhen(
        failed: (message) => this.showErrorDialog(message: message),
        loading: (isLoading) => this.toggleLoading(isLoading),
        success: () => _goToHomePage(),
        orElse: () {});
  }

  void _goToHomePage() {
    Navigator.of(context).pushNamed(MyRouters.homePage);
  }
}
