import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vibbra_notifications/design_system/values/colors.dart';

import 'app_button.dart';

class AppButtonLoading extends StatelessWidget {
  const AppButtonLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton(
      child: const SizedBox(
        width: 15,
        height: 15,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.white,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
      ),
      backgroundColor: DefaultColors.defaultBlue,
      elevation: 0,
    );
  }
}
