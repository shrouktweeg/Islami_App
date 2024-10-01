import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:islamiapp/moduls/hadith/hadith_details_view.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
 List<HadethModel>hadethModelList=[];

  @override
  Widget build(BuildContext context) {
    var themeText=Theme.of(context);
    if (hadethModelList.isEmpty)readHadith();
    return Column(
      children: [
        Image.asset('assets/images/hadith_header.png',scale: 2.5,),
        Divider(),
        Text('الأحاديث ',style:themeText.textTheme.bodyLarge ,),
        Divider(),
        Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            return Bounceable(
              onTap:(){
                Navigator.pushNamed(context, HadithDetailsView.nameRoute,arguments: hadethModelList[index]);
              },child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(hadethModelList[index].title,style: themeText.textTheme.bodyMedium,textAlign: TextAlign.center,),
              ),
            );
          },
            itemCount: hadethModelList.length,

          ),
        )
      ],
    );

  }

 Future<void> readHadith()async{
    String content=await rootBundle.loadString('assets/ahadeth/ahadeth.txt');
    List<String>ahadeth=content.split('#');
    for(int i=0;i<ahadeth.length;i++){
      String singleHadeth=ahadeth[i].trim();
      int index=singleHadeth.indexOf('\n');
      String title=singleHadeth.substring(0,index);
      String bodyContent=singleHadeth.substring(index+1);
      hadethModelList.add(HadethModel(bodyContent: bodyContent, title: title));
      setState(() {

      });
    }

  }
}
class HadethModel{
  final String bodyContent;
  final String title;
  HadethModel({required this.bodyContent,required this.title});
}
