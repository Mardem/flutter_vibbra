import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vibbra_notifications/core/di/components/local/local_storage.dart';
import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/auth/routes.dart';
import 'package:vibbra_notifications/modules/auth/src/data/local/account_local.service.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/login.mapper.dart';
import 'package:vibbra_notifications/modules/home/routes.dart';
import 'package:vibbra_notifications/modules/home/src/presentation/home/home.viewmodel.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _storage = inject<LocalStorage>();
  final _homeVM = inject<HomeViewModel>();
  final _accountService = inject<AccountServiceLocal>();

  @override
  void initState() {
    checkStorage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(),
      ),
    );
  }

  checkStorage(context) async {
    String? res = await _storage.get(AccountServiceLocalKeys.keepConnected);
    String? resUser = await _storage.get(AccountServiceLocalKeys.userData);

    bool resultBool = jsonDecode(res ?? 'false');

    if (resultBool == false && res == null && resUser == null) {
      Navigator.pushNamed(context, routeLogin.name);
    } else {
      HttpResponse<LoginMapper?> res = await _accountService.getUserData();
      _homeVM.setName(res.data!.user!.name);

      Navigator.pushNamed(context, routeHome.name);
    }
  }
}
