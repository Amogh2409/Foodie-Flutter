import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style:  Theme.of(context).textTheme.headline4, textAlign: TextAlign.center,
        ),
        SizedBox(height: kDefaultPadding),
        Row(
          children: [
            const Spacer(),
             Container(
              height: 300,
              width: 300,
              child: SvgPicture.asset("assets/icons/Eating.svg"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: kDefaultPadding),
      ],
    );
  }
}
