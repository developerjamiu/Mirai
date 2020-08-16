import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mirai/features/presentation/pages/attendance_page.dart';

import 'package:mirai/features/presentation/pages/login_page.dart';
import 'package:mirai/features/presentation/widgets/custom_flat_button.dart';
import 'package:mirai/features/presentation/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TapGestureRecognizer signIn;
  TapGestureRecognizer recoverPassword;

  @override
  void initState() {
    signIn = TapGestureRecognizer()
      ..onTap = () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => LoginPage()),
        );
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                header,
                SizedBox(height: 48.0),
                headline,
                SizedBox(height: 12.0),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      socialRegister,
                      SizedBox(height: 12.0),
                      Center(
                        child: Text(
                          'Or',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      SizedBox(height: 12.0),
                      form,
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                Center(
                  child: signInOrRecover,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get header => Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'Mirai',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          CustomFlatButton(
            active: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LoginPage()),
              );
            },
            label: 'Sign In',
          ),
          CustomFlatButton(
            active: true,
            onPressed: () {},
            label: 'Register',
          ),
        ],
      );

  Widget get headline => RichText(
        text: TextSpan(
          text: 'Why if it isn\'t the best teacher ever! ',
          style: Theme.of(context).textTheme.headline3,
          children: <TextSpan>[
            TextSpan(
              text: 'Welcome',
              style: Theme.of(context).textTheme.headline3.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ],
        ),
      );

  Widget get socialRegister => Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.google,
                    size: 16.0,
                  ),
                  SizedBox(width: 8.0),
                  Text('Register with Google'),
                ],
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 4.0),
          Expanded(
            flex: 1,
            child: RaisedButton(
              child: FaIcon(
                FontAwesomeIcons.twitter,
                size: 16.0,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 4.0),
          Expanded(
            flex: 1,
            child: RaisedButton(
              child: FaIcon(
                FontAwesomeIcons.facebookF,
                size: 16.0,
              ),
              onPressed: () {},
            ),
          ),
        ],
      );

  Widget get form => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Register with Email',
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: 16.0),
          CustomTextField(
            prefixIcon: FontAwesomeIcons.user,
            hintText: 'Enter Fullname',
          ),
          SizedBox(height: 16.0),
          CustomTextField(
            prefixIcon: FontAwesomeIcons.envelope,
            hintText: 'Enter Email',
          ),
          SizedBox(height: 16.0),
          CustomTextField(
            prefixIcon: FontAwesomeIcons.lock,
            hintText: 'Enter Password',
          ),
          SizedBox(height: 16.0),
          CustomTextField(
            prefixIcon: FontAwesomeIcons.lock,
            hintText: 'Reenter Password',
          ),
          SizedBox(height: 16.0),
          Center(
            child: RaisedButton(
              child: Text('Register'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => AttendancePage()),
                );
              },
            ),
          ),
        ],
      );

  Widget get signInOrRecover => RichText(
        text: TextSpan(
          text: 'Have and account? ',
          style: Theme.of(context).textTheme.caption,
          children: <TextSpan>[
            TextSpan(
              text: 'Sign In',
              recognizer: signIn,
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
            TextSpan(
              text: '. Forgot Password? ',
            ),
            TextSpan(
              text: 'Recover Here',
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ],
        ),
      );
}
