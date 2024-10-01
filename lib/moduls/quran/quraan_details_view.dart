import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/moduls/quran/quran_view.dart';
import 'package:islamiapp/moduls/setting/setting_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuraanDetailsView extends StatefulWidget {
  const QuraanDetailsView({super.key});

  static String nameRoute = 'QuraanDetailsView';

  @override
  State<QuraanDetailsView> createState() => _QuraanDetailsViewState();
}

class _QuraanDetailsViewState extends State<QuraanDetailsView> {
  @override
  Widget build(BuildContext context) {
    
    var provider=Provider.of<SettingProvider>(context);
    var textTheme = Theme.of(context);
    var legal=AppLocalizations.of(context)!;
    var arg = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if(verseslist.isEmpty) quranView(arg.suraNumber);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              provider.getBackGround()
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(
            legal.islami
          ,
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 60),
          margin: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 80),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:provider.isDark()?Color(0XFF141A2E).withOpacity(0.80): Color(0XFFF8F8F8).withOpacity(0.80)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' سورة${arg.suraName} ',
                    style: textTheme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_arrow_rounded,

                  )
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                    itemCount: verseslist.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        textAlign: TextAlign.center,
                           '{${index+1}} ${verseslist[index]}',
                            style: textTheme.textTheme.bodySmall,
                          ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> verseslist = [];
  Future<void> quranView(int index) async {
    String suraData = await rootBundle.loadString('assets/sura/$index.txt');
    verseslist = suraData.split('\n');
    setState(() {});
  }
}
