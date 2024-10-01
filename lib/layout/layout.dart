import 'package:flutter/material.dart';
import 'package:islamiapp/moduls/setting/setting_model.dart';
import 'package:provider/provider.dart';
import '/moduls/hadith/hadith_view.dart';
import '/moduls/quran/quran_view.dart';
import '/moduls/radio/radio_view.dart';
import '/moduls/sebha/sebha_view.dart';
import '/moduls/setting/setting_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LayoutView extends StatefulWidget {
  static String nameRoute = 'LayoutView';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> viewList = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    SettingView(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var legal=AppLocalizations.of(context)!;
    var provider=Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(provider.getBackGround())),
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/quran.png')),
                label: legal.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/hadith.png')),
                label: legal.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/sebha.png')),
                label: legal.tasbeh),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/radio.png')),
                label: legal.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: legal.settings),
          ],
        ),
        appBar: AppBar(
          title:  Text(
            legal.islami,
          ),
          centerTitle: true,
        ),
        body: viewList[selectedIndex],
      ),
    );
  }
}
