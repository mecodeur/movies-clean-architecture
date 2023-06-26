import 'package:flutter/material.dart';
import 'package:movies_clean_architecture_test/core/utils/app_constant.dart';
import 'package:movies_clean_architecture_test/core/utils/service_locator.dart';
import 'package:movies_clean_architecture_test/presentation/pages/home_page/movie_home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstant.appName,
      locale: const Locale('fr'),
      localizationsDelegates:  const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
      ],
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const MovieHomePage(),
    );
  }
}
