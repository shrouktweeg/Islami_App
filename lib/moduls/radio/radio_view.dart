import 'package:flutter/material.dart';
import 'package:islamiapp/core/services/api_manager/api.dart';
import 'package:audioplayers/audioplayers.dart';
class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
int index=0;
final player = AudioPlayer();
bool isPlay=false;

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return FutureBuilder(
      future: ApiManager.getRadio(),
      builder: (context,snapShot) {
        var radio=snapShot.data?.radios??[];
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Image.asset('assets/images/radio.png',width: 350,),
          snapShot.connectionState==ConnectionState.waiting?Center(
            child: CircularProgressIndicator(
              color: theme.primaryColor,
            ),
          ):  Text(radio[index].name??"",style: theme.textTheme.bodyMedium,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: ()async{
                  if(index>0){
                    index--;
                   await player.stop();
                 await   player.play(UrlSource(radio[index].url??""));
                    setState(() {

                    });
                  }

                }, icon: Icon(Icons.skip_previous,size: 40,color: theme.primaryColor,),)
                ,IconButton(onPressed: ()async{
                  changePlay();
                  if(isPlay){
                   await player.play(UrlSource(radio[index].url??""));
                  }else {
                  await  player.stop();
                  }
                }, icon:isPlay? Icon(Icons.pause,size: 40,color: theme.primaryColor,): Icon(Icons.play_arrow,size: 40,color: theme.primaryColor,),)
                ,IconButton(onPressed: ()async{
                  if(index<radio.length-1){
                    index++;
                    await player.stop();
                 await   player.play(UrlSource(radio[index].url??""));
                    setState(() {

                    });
                  }

                }, icon: Icon(Icons.skip_next,size: 40,color: theme.primaryColor,),)

              ],
            )
          ]
        );
      }
    );
  }
  void changePlay(){
    setState(() {
      isPlay=!isPlay;
    });
  }
@override
  void deactivate() {
 player.stop();
    super.deactivate();
  }
  @override
  void dispose() {
player.dispose();
    super.dispose();
  }
}
