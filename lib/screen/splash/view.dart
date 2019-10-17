import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:wakatime/navigator.dart';
import 'package:wakatime/screen/login/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // FIXME : simulate API request
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // TODO : check login session
      // TODO :

      Future.delayed(Duration(seconds: 2), () {
        RouterNavigator.pushAndRemoveUntil(context, widget: LoginScreen());
      });
    });
  }

  @override
  build(context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                child: FlutterLogo(size: 112.0),
                margin: EdgeInsets.only(bottom: 32.0)),
            CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
