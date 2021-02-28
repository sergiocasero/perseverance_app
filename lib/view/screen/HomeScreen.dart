import 'package:perseverance/di/Locator.dart';
import 'package:perseverance/view/viewmodel/HomeViewModel.dart';
import 'package:perseverance/view/widget/RootWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends RootWidget<HomeViewModel> {
  HomeScreen() : super(getIt());

  @override
  Widget widget(HomeViewModel model) {
    return Scaffold();
  }
}
