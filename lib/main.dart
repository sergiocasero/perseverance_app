import 'package:perseverance/di/Locator.dart';
import 'package:perseverance/view/screen/SplashScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDI();
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [Locale("es", "ES"), Locale("en", "US")],
    fallbackLocale: Locale("es", "ES"),
    path: "assets/strings.csv",
    assetLoader: CsvAssetLoader(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Perseverance pics',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }

}
