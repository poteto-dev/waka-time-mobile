import 'package:flutter/cupertino.dart';

class RouterNavigator {
  RouterNavigator._();

  static Future<T> push<T>(BuildContext context,
      {Widget widget,
      String title,
      bool fullscreenDialog = false,
      maintainState = true}) async {
    return await Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (_context) => widget,
            title: title,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog));
  }

  static Future<T> pushAndRemoveUntil<T>(BuildContext context,
      {Widget widget,
      String title,
      bool fullscreenDialog = false,
      maintainState = true}) async {
    return await Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(
            builder: (_context) => widget,
            title: title,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog),
        (_) => false);
  }
}
