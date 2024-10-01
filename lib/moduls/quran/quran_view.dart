import 'package:flutter/material.dart';
import 'package:islamiapp/moduls/quran/sura_title_widget.dart';
import 'package:islamiapp/moduls/quran/quraan_details_view.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
 final List<String>suraName=const['الفَاتِحَة','البَقَرَة','آل عِمرَان','النِّسَاء','المَائدة','الأنعَام',
 'الأعرَاف','الأنفَال','التوبَة','يُونس','هُود','يُوسُف','الرَّعْد','إبراهِيم','الحِجْر','النَّحْل','الإسْرَاء',
 'الكهْف','مَريَم','طه','الأنبيَاء','الحَج','المُؤمنون','النُّور','الفُرْقان','الشُّعَرَاء','النَّمْل','القَصَص','العَنكبوت',
 'الرُّوم','لقمَان','السَّجدَة','الأحزَاب','سَبَأ','فَاطِر','يس','الصَّافات','ص','الزُّمَر','غَافِر','فُصِّلَتْ',
 'الشُّورَى','الزُّخْرُف','الدُّخان','الجاثِية','الأحقاف','مُحَمّد','الفَتْح','الحُجُرات','ق','الذَّاريَات','الطُّور',
 'النَّجْم','القَمَر','الرَّحمن','الواقِعَة','الحَديد','المُجادَلة','الحَشْر','المُمتَحَنة','الصَّف','الجُّمُعة','المُنافِقُون',
 'التَّغابُن','الطَّلاق','التَّحْريم','المُلْك','القَلـََم','الحَاقّـَة','المَعارِج','نُوح','الجِنّ','المُزَّمّـِل','المُدَّثــِّر',
 'القِيامَة','الإنسان','المُرسَلات','النـَّبأ','النـّازِعات','عَبَس','التـَّكْوير','الإنفِطار','المُطـَفِّفين','الإنشِقاق',
 'البُروج','الطّارق','الأعلی','الغاشِيَة','الفَجْر','البَـلـَد','الشــَّمْس','اللـَّيل','الضُّحی','الشَّرْح','التـِّين',
 'العَلـَق','القـَدر','البَيِّنَة','الزلزَلة','العَادِيات','القارِعَة','التَكاثـُر','العَصْر','الهُمَزَة','الفِيل','قـُرَيْش',
 'المَاعُون','الكَوْثَر','الكَافِرُون','النـَّصر','المَسَد','الإخْلَاص','الفَلَق','النَّاس'];


  @override
  Widget build(BuildContext context) {
    var textTheme=Theme.of(context);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/quran_header_icn.png',scale:3.5 ,),
          Divider(),
          Row(
            children: [
              Expanded(child: Text('رقم السورة',style: textTheme.textTheme.bodyLarge,textAlign: TextAlign.center,)),
              SizedBox(child: VerticalDivider(),height: 40,),
              Expanded(child: Text('اسم السورة ',style: textTheme.textTheme.bodyLarge,textAlign: TextAlign.center,)),
            ],
          ),
          Divider(),
         Expanded(
           child: ListView.builder(
    itemCount: suraName.length,
    itemBuilder: (context,index)=>
             InkWell(
    onTap: (){
    Navigator.pushNamed(context, QuraanDetailsView.nameRoute,arguments:SuraDetails(suraName: suraName[index], suraNumber: index+1));
    },
                 child: SuraTitleWidget(suraName:suraName[index] ,index: index,)

           ,)
         )
         ),
        ],
      )
    ;
  }
}
class SuraDetails{
  String suraName;
  int suraNumber;
  SuraDetails({required this.suraName,required this.suraNumber});
}
