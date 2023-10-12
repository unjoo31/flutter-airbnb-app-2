import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app_2/components/home/home_body_banner.dart';
import 'package:flutter_airbnb_app_2/components/home/home_body_popular.dart';
import 'package:flutter_airbnb_app_2/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);

    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
