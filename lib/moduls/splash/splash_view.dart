import 'package:flutter/material.dart';
import 'package:islamiapp/moduls/setting/setting_model.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import '../../layout/layout.dart';

class SplashView extends StatefulWidget {
  static String nameRoute = '/';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.nameRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingProvider>(context);
    return Image.asset(
      provider.isDark()?'assets/images/splash – 1.png':
      'assets/images/splash.png',
      fit: BoxFit.cover,
    );
  }
}
