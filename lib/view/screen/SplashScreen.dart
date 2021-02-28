import 'package:perseverance/di/Locator.dart';
import 'package:perseverance/view/viewmodel/SplashViewModel.dart';
import 'package:perseverance/view/widget/RootWidget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends RootWidget<SplashViewModel> {
  SplashScreen() : super(getIt());

  @override
  Widget widget(SplashViewModel model) {
    return Scaffold(
      body: withProgress(
          body: Center(
            child: Text("loading").tr(),
          ),
          model: model),
    );
  }
}
