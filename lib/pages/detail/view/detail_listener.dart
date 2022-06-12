part of 'detail_page.dart';

extension DetailListener on _DetailPageState {
  void _listener(BuildContext context, DetailState state) {
    state.maybeWhen(
        loading: (isLoading) => this.toggleLoading(isLoading),
        exception: (message, code) => this.showErrorDialog(message: message),
        loaded: (item) {
          setState(() {
            numberOfProduct = item.amount!;
          });
        },
        orElse: () {});
  }
}
