import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counter=0;
  int index=0;
  double angle=0;
  List<String>azkar=[
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر',
    'لا حول ولا قوة إلا بالله',
  ];

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var theme=Theme.of(context);

    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head of seb7a.png',width: 45,),
              InkWell(
                onTap: (){
                  onZekrClicked();
                },
                child: Padding(
                  padding:  EdgeInsets.only(top: size.height *0.001),
                  child: Transform.rotate(
                    angle:angle,
                      child: Image.asset('assets/images/body of seb7a.png',width: 260,)),
                ),
              ),
            ],
          ),
         SizedBox(height: size.height*0.1,),
          Text('عدد التسبيحات',style: theme.textTheme.bodyLarge,),
          SizedBox(height: size.height*0.05,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0XFFB7935F).withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
              
            ),
            child: Text('$counter',style: TextStyle(fontSize: 25),),
          ),
          SizedBox(height: size.height*0.05,),
          InkWell(
            onTap: (){
              onZekrClicked();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0XFFB7935F),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text('${azkar[index]}',style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),),
            ),
          ),

        ],
      ),
    );
  }
  onZekrClicked(){
    angle+=0.12;
    setState(() {
      if(counter<33){
        counter+=1;

      }
      else{
        counter=0;
        index++;
        if(index==azkar.length){
          index=0;
        }
      }
    });
  }
}
