import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'navigation/pages.dart';
import 'navigation/routes.dart';
import 'theme/app_colors.dart';

class PayFlowApp extends StatelessWidget {
  const PayFlowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp],
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return StreamBuilder<Locale>(
          stream: null,
          builder: (BuildContext context, AsyncSnapshot<Locale> snapshot) {
            return MaterialApp(
              locale: snapshot.data,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                // useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(seedColor: AppColors.orange),
                scaffoldBackgroundColor: Colors.white,
              ),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              initialRoute: Routes.login,
              routes: Pages.pages,
            );
          },
        );
      },
    );
  }
}