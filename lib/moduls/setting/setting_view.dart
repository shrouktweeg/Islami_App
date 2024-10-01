import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/moduls/setting/setting_model.dart';
import 'package:provider/provider.dart';

const List<String> _language = [
  'English',
  'عربي',
];
const List<String> _themeMode = [
  'Light',
  'Dark',
];
class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {

    var provider=Provider.of<SettingProvider>(context);
    var textTheme=Theme.of(context);
    var lang=AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 85.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lang.language,style:textTheme.textTheme.bodyLarge),
          CustomDropdown(
            initialItem: provider.language=='en'?_language[0]:_language[1],

            items: _language, onChanged: (value){
            if(value=='English'){
              provider.changeLanguage('en');
            }
            else if (value=='عربي'){
              provider.changeLanguage('ar');
            }
          },
          decoration: CustomDropdownDecoration(
            closedFillColor: provider.isDark()?Color(0XFF695536):Colors.white,
            closedSuffixIcon: Icon(Icons.arrow_drop_down),
            expandedFillColor: provider.isDark()?Color(0XFF695536):Colors.white,
            expandedSuffixIcon: Icon(Icons.arrow_drop_up),

        ),),
          SizedBox(height: 25,),
          Text(lang.themeMode,style:textTheme.textTheme.bodyLarge),
          CustomDropdown(
            initialItem: provider.themeMode==ThemeMode.dark?_themeMode[1]:_themeMode[0],
            decoration: CustomDropdownDecoration(
              closedFillColor: provider.isDark()?Color(0XFF695536):Colors.white,
              closedSuffixIcon: Icon(Icons.arrow_drop_down),
              expandedFillColor: provider.isDark()?Color(0XFF695536):Colors.white,
              expandedSuffixIcon: Icon(Icons.arrow_drop_up),
            ),
              items: _themeMode, onChanged: (value){
            if(value=='Dark'){
              provider.changeThemeMode(ThemeMode.dark);
            }
            else if (value=='Light'){
              provider.changeThemeMode(ThemeMode.light);
            }
          }),

        ],
      ),
    );
  }
}
