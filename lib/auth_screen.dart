import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_with_animation/constants.dart';
import 'package:login_with_animation/widgets/login_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: _size.width * 0.88,
            height: _size.height,
            child: Container(
              color: login_bg,
              child: LoginForm(),
            ),
          ),
          Positioned(
            left: 0,
            top: _size.height * 0.1,
            right: 0,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white60,
              child: SvgPicture.asset(
                "assets/animation_logo.svg",
                color: login_bg,
              ),
            ),
          )
        ],
      ),
    );
  }
}
