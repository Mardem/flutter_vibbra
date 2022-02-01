import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/design_system/components/ui/app_button.dart';
import 'package:vibbra_notifications/design_system/utils/snackbar.util.dart';
import 'package:vibbra_notifications/design_system/values/colors.dart';

import 'components/shape_bottom.dart';
import 'components/shape_top.dart';
import 'login.viewmodel.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final vm = inject<LoginViewModel>();

  @override
  void didChangeDependencies() {
    vm.error.listen((event) {
      SnackBarUtil.show(
        context,
        message: event,
        snackBarColor: SnackBarColors.error,
      );
    });

    vm.success.listen((event) {
      SnackBarUtil.show(
        context,
        message: event,
        snackBarColor: SnackBarColors.success,
      );
    });

    vm.info.listen((event) {
      SnackBarUtil.show(
        context,
        message: event,
        snackBarColor: SnackBarColors.defaultColor,
      );
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          color: const Color.fromRGBO(249, 249, 252, 1.0),
          child: Stack(
            children: [
              ShapeTopStack(),
              Positioned(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100.w),
                      child: SvgPicture.asset(
                        'src/img/home/logo.svg',
                        height: 100.w,
                      ),
                    ),
                    const Text('Acesse sua conta'),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.sp),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    decoration: _inputDecoration(
                                      hint: 'E-mail',
                                    ),
                                  ),
                                  SizedBox(height: 30.w),
                                  TextFormField(
                                    decoration: _inputDecoration(
                                      hint: 'Senha',
                                    ),
                                  ),
                                  SizedBox(height: 20.w),
                                  AppButton(
                                    child: const Text(
                                      'Acessar',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 30.w,
                                    ),
                                    backgroundColor: DefaultColors.defaultBlue,
                                    elevation: 0,
                                    onPressed: () => print(''),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50.w,
                                  child: Row(
                                    children: const [
                                      Expanded(flex: 1, child: Divider()),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Ou acesse utilizando',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: DefaultColors.defaultGrey,
                                          ),
                                        ),
                                      ),
                                      Expanded(flex: 1, child: Divider()),
                                    ],
                                  ),
                                ),
                                const AppButton(
                                  child: Text(
                                    'Criar uma conta',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: DefaultColors.defaultBlue,
                                  elevation: 0,
                                  radius: 3,
                                ),
                                SignInButton(
                                  Buttons.Google,
                                  text: 'Login com o Google',
                                  onPressed: () => vm.googleLogin(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const ShapeBottomStack(),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration({required String hint}) {
    return InputDecoration(
      border: InputBorder.none,
      hintText: hint,
      hintStyle: const TextStyle(fontSize: 13),
      filled: true,
      fillColor: Colors.grey.withOpacity(.2),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
