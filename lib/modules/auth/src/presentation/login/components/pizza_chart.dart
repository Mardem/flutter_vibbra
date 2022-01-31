import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibbra_notifications/design_system/components/animated/up_down.dart';

class PizzaChartStack extends StatelessWidget {
  const PizzaChartStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().setHeight(50),
      bottom: ScreenUtil().setWidth(30),
      left: ScreenUtil().setWidth(-80),
      child: AppDownAnimation(
        child: SvgPicture.asset(
          'src/img/home/pizza_chart.svg',
          semanticsLabel: 'Pizza chart',
        ),
      ),
    );
  }
}
