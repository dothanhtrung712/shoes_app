import 'package:flutter/material.dart';
import 'package:shoes_app/resources/colors.dart';

abstract class BaseScreenState<T extends StatefulWidget> extends State<T> {
  late final OverlayState? _overlayState;
  late OverlayEntry _loadingEntry;

  @override
  void initState() {
    super.initState();
    _overlayState = Overlay.of(context);
  }

  Widget buildContent(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(allowPopScope),
        child: buildContent(context));
  }

  bool get allowPopScope => true;

  Widget _buildLoadingWidget() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Center(
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                ColorResources.whiteColor,
              ))),
            ),
          )
        ]));
  }

  void toggleLoading(bool isLoading) {
    if (isLoading) {
      _loadingEntry = OverlayEntry(builder: (context) {
        return _buildLoadingWidget();
      });

      _overlayState?.insert(_loadingEntry);
    } else {
      _loadingEntry.remove();
    }
  }

  void showErrorDialog({String title = '', required String message}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
              title: Text(title),
              content: Text(message),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'))
              ],
            ));
  }
}
