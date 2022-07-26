import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neww/Tabs/setting/show_bottom_sheet_language.dart';
import 'package:neww/Tabs/setting/show_bottom_sheet_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var proiver=Provider.of<MyProviderApp>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              ShowBottomSheetLanguage();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor)
                ),
                child: Text(proiver.AppLanguage=='en'?'English'
                    : "العربية",style: Theme.of(context).textTheme.headline2,)),
          ),
          SizedBox(height: 15,),
          Text('Theme',style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              ShowBottomSheetTheme();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor)
                ),
                child: Text(proiver.themeMode==ThemeMode.light?"Light":"Dark",style: Theme.of(context).textTheme.headline2,)),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
  void ShowBottomSheetLanguage(){

    showModalBottomSheet(context: context, builder: (context){
      return ShowLanguageBottomSheet();
    });
  }
  void ShowBottomSheetTheme(){

    showModalBottomSheet(context: context, builder: (context){
      return ShowThemeBottomSheet();
    });
  }

}