import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;
  Result({required this.resultScore});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(

        //'$resultScore',
        //သူတစ်ခုထဲ ဆိုရင် $ခံပီးအပေါ်ကလို ရေးပေးလို့ရတယ်  
        //String နဲ့ ပေါင်းပီး concat လုပ်ရင် .toString ဆိုပီး String ပြောင်းပေးရသည်။
       // 'Your total scroe is :' + resultScore!.toString(),
       'NO DATA',

        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      ),
    );
  }
}
