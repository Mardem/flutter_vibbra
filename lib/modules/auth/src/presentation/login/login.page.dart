import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/cta_button.dart';
import 'components/shape_bottom.dart';
import 'components/shape_top.dart';
import 'components/texts/description.dart';
import 'components/texts/title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        color: const Color.fromRGBO(249, 249, 252, 1.0),
        child: Stack(
          children: [
            ShapeTopStack(),
            Positioned(
              height: ScreenUtil().setHeight(480),
              width: ScreenUtil().screenWidth,
              child: Container(),
            ),
            TitleHomeStack(),
            DescriptionHomeStack(),
            const ShapeBottomStack(),
            CTAButtonStack(),
          ],
        ),
      ),
    );
  }
}
