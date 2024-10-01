
import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraName;
  final int index;
  const SuraTitleWidget({super.key,required this.suraName,required this.index});

  @override
  Widget build(BuildContext context) {
    var textTheme=Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Text('${index+1}',style: textTheme.textTheme.bodyMedium,textAlign: TextAlign.center,)),
        SizedBox(child: VerticalDivider(),height: 40,),
        Expanded(child: Text('$suraName',style: textTheme.textTheme.bodyMedium,textAlign: TextAlign.center)),
      ],
    );
  }
}

