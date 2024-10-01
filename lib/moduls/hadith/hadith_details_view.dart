import 'package:flutter/material.dart';
import 'package:islamiapp/moduls/hadith/hadith_view.dart';
import 'package:islamiapp/moduls/setting/setting_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithDetailsView extends StatelessWidget {
  const HadithDetailsView({super.key});
  static String nameRoute='hadithdDetailsView';

  @override
  Widget build(BuildContext context) {
    var textTheme=Theme.of(context);
    var argument=ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider=Provider.of<SettingProvider>(context);
    var legal=AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(provider.getBackGround()),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(
            legal.islami,
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 60),
          margin: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 80),
          decoration: BoxDecoration(
            color: provider.isDark()?Color(0XFF141A2E).withOpacity(0.80):Color(0XFFF8F8F8).withOpacity(0.80),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListView(
            children: [
              Text(argument.title,style: textTheme.textTheme.bodyMedium,textAlign: TextAlign.center,),
              Divider(),
              Text(argument.bodyContent,style: textTheme.textTheme.bodySmall,textAlign: TextAlign.center,)
            ],
          ),

        ),

      ),
    );
  }
}
