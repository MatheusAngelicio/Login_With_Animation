import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_with_animation/constants.dart';
import 'package:login_with_animation/widgets/login_form.dart';
import 'package:login_with_animation/widgets/sign_up_form.dart';
import 'package:login_with_animation/widgets/socal_buttons.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isShowSignUp = false;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: defaultDuration,
            width: _size.width * 0.88,
            height: _size.height,
            left: _isShowSignUp ? -_size.width * 0.76 : 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isShowSignUp = !_isShowSignUp;
                });
              },
              child: Container(
                color: login_bg,
                child: LoginForm(),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: defaultDuration,
            height: _size.height,
            width: _size.width * 0.88,
            left: _isShowSignUp ? _size.width * 0.12 : _size.width * 0.88,
            child: Container(
              color: signup_bg,
              child: SignUpForm(),
            ),
          ),
          AnimatedPositioned(
            duration: defaultDuration,
            left: 0,
            top: _size.height * 0.1,
            right: _isShowSignUp ? -_size.width * 0.06 : _size.width * 0.06,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white60,
              child: _isShowSignUp
                  ? SvgPicture.asset(
                      "assets/animation_logo.svg",
                      color: signup_bg,
                    )
                  : SvgPicture.asset(
                      "assets/animation_logo.svg",
                      color: login_bg,
                    ),
            ),
          ),
          AnimatedPositioned(
            duration: defaultDuration,
            width: _size.width,
            bottom: _size.height * 0.1,
            right: _isShowSignUp ? -_size.width * 0.06 : _size.width * 0.06,
            child: SocalButtns(),
          )
        ],
      ),
    );
  }
}
