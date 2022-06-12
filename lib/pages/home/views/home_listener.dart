part of 'home_page.dart';

extension HomeListener on _HomePageState {
  void _listener(BuildContext context, HomeState state) {
    state.maybeWhen(
        loading: (isLoading) => this.toggleLoading(isLoading),
        exception: (message, code) => this.showErrorDialog(message: message),
        orElse: () {});
  }
}
