import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bar_chart.dart';
import 'message.dart';
import 'pizza_chart.dart';
import 'rectangle.dart';

class MainBannerStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setHeight(330),
            top: ScreenUtil().setWidth(100),
            child: SvgPicture.asset(
              'src/img/home/welcome_icon.svg',
              semanticsLabel: 'Welcome Banner',
            ),
          ),
          RectangleStack(),
          MessageStack(),
          PizzaChartStack(),
          BarChartStack(),
        ],
      ),
    );
  }
}
