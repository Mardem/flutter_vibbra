import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibbra_notifications/design_system/components/animated/up_down.dart';

class MessageStack extends StatelessWidget {
  const MessageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: ScreenUtil().setWidth(50),
      top: ScreenUtil().setWidth(120),
      left: ScreenUtil().setWidth(-15),
      child: AppDownAnimation(
        child: SvgPicture.asset(
          'src/img/home/message.svg',
          semanticsLabel: 'Message',
        ),
      ),
    );
  }
}
