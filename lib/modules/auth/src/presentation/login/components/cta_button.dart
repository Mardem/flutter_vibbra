import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vibbra_notifications/design_system/components/ui/app_button.dart';
import 'package:vibbra_notifications/design_system/values/colors.dart';

class CTAButtonStack extends StatelessWidget {
  const CTAButtonStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ScreenUtil().setWidth(40),
      left: ScreenUtil().setWidth(20),
      child: Container(
        child: AppButton(
          backgroundColor: DefaultColors.defaultBlue,
          elevation: 0,
          child: const Text(
            'Iniciar experiência',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () async {},
          // onPressed: () => Get.off(() => MainMenu()),
        ),
      ),
    );
  }
}
