import 'package:flutter/cupertino.dart';
import 'package:wakatime/screen/splash/view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return CupertinoApp(title: 'Waka Time Client', home: SplashScreen());
  }
}
