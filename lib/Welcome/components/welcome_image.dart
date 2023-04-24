import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to Foodie",
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: kDefaultPadding * 2),
        Row(
          children: [
            Spacer(),
            Container(
              width: 300,
              height: 300,
              child: SvgPicture.asset("assets/icons/foodlogo.svg"),
            ),
            Spacer()
          ],
        ),
        SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}
