import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:vibbra_notifications/design_system/components/layouts/main.layout.dart';
import 'package:vibbra_notifications/design_system/components/ui/app_text.dart';
import 'package:vibbra_notifications/design_system/values/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      rightLogo: true,
      child: SizedBox(
        width: ScreenUtil().screenWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 180.w),
              AppText(
                text: 'Bem vindo, Marden!',
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
              Container(
                margin: EdgeInsets.only(top: 30.w),
                height: 400.w,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    _container(
                      icon: LineIcons.mobilePhone,
                      title: 'Configuração\nde\nSMS',
                    ),
                    _container(
                      icon: LineIcons.envelope,
                      title: 'Configuração\nde\nE-mail',
                    ),
                    _container(
                      icon: LineIcons.home,
                      title: 'Tela inicial',
                    ),
                    _container(
                      icon: LineIcons.timesCircleAlt,
                      title: 'Sair',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _container({required String title, required IconData icon}) {
    return Container(
      height: 40.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.w),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.01),
            blurRadius: 1,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50.w,
              color: DefaultColors.defaultBlue,
            ),
            AppText(
              text: title,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
