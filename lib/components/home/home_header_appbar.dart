import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app_2/constants.dart';
import 'package:flutter_airbnb_app_2/size.dart';
import 'package:flutter_airbnb_app_2/styles.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: kAccentColor,
        ),
        SizedBox(width: gap_s),
        Text(
          "RoomOfAll",
          style: h5(mColor: Colors.white),
        ),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            print("회원가입 클릭됨");
          },
          child: Text(
            "회원가입",
            style: subtitle1(mColor: Colors.white),
          ),
        ),
        SizedBox(width: gap_m),
        TextButton(
          onPressed: () {
            print("로그인 클릭됨");
          },
          child: Text(
            "로그인",
            style: subtitle1(mColor: Colors.white),
          ),
        ),
      ],
    );
  }
}
