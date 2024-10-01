import 'package:flutter/material.dart';
import 'package:islamiapp/moduls/hadith/hadith_details_view.dart';
import 'package:islamiapp/moduls/quran/quraan_details_view.dart';
import 'package:islamiapp/moduls/setting/setting_model.dart';
import 'package:provider/provider.dart';
import 'core/theme/theme_application.dart';
import 'layout/layout.dart';
import 'moduls/splash/splash_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=>SettingProvider(),child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingProvider>(context);
    return MaterialApp(

      locale:Locale(provider.language),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeApplicationManager.lightTheme,
      darkTheme: ThemeApplicationManager.darkTheme,
      themeMode: provider.themeMode,
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      initialRoute: SplashView.nameRoute,
      routes: {
        SplashView.nameRoute: (context) => const SplashView(),
        LayoutView.nameRoute: (context) => LayoutView(),
        QuraanDetailsView.nameRoute:(context)=>QuraanDetailsView(),
        HadithDetailsView.nameRoute:(context)=>HadithDetailsView(),
      },
    );
  }
}
