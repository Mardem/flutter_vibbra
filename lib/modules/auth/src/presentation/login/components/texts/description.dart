import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionHomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ScreenUtil().setWidth(106),
      width: ScreenUtil().screenWidth,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Preparado para ter suas finanças e investimentos na palma da mão?',
          style: GoogleFonts.openSans(
            fontSize: 15.sp,
            color: Color.fromRGBO(64, 61, 61, 1.0),
          ),
        ),
      ),
    );
  }
}
