import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ScreenUtil().setWidth(160),
      left: ScreenUtil().setWidth(18),
      child: Container(
        child: Column(
          children: [
            Text(
              'Gerencie seus investimentos \nem alguns cliques',
              style: GoogleFonts.openSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(64, 61, 61, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
