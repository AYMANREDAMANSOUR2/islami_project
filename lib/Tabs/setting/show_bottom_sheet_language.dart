import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neww/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatefulWidget {

  @override
  State<ShowLanguageBottomSheet> createState() => _ShowLanguageBottomSheetState();
}

class _ShowLanguageBottomSheetState extends State<ShowLanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProviderApp>(context);
    Widget showLanguageSelected(String text,bool selected){
      if(selected){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$text',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Theme.of(context).primaryColor
            ),),
            Icon(Icons.check,color: Theme.of(context).primaryColor,),
          ],
        );
      }
      else{ //not selected
        return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$text',style: Theme.of(context).textTheme.bodyText1),
            Icon(Icons.check),
          ],
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          InkWell(
              onTap: (){
                pro.changeLanguage('en');
                Navigator.pop(context);
              },
              child: showLanguageSelected('English',pro.AppLanguage=='en'?true:false)),
          SizedBox(height: 15,),
          InkWell(
              onTap: (){ pro.changeLanguage('ar');
              Navigator.pop(context);
              },
              child: showLanguageSelected('العربية',pro.AppLanguage=='ar'?true:false)),
        ],
      ),
    );
  }


}