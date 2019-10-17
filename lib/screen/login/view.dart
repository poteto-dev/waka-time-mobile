import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  @override
  createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  build(context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Email'),
                    margin: EdgeInsets.only(bottom: 8.0),
                  ),
                  CupertinoTextField(),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Password'),
                    margin: EdgeInsets.only(bottom: 8.0),
                  ),
                  CupertinoTextField(),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              CupertinoButton(
                onPressed: () {},
                color: CupertinoColors.activeBlue,
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
