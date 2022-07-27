import 'package:flutter/material.dart';
import 'package:neww/Tabs/Ahadeth_Tab/Ahadeth.dart';
import 'package:neww/Tabs/Quran_Tab/quran.dart';
import 'package:neww/Tabs/Radio_Tab/RadioScreen.dart';
import 'package:neww/Tabs/sebha/sebha.dart';
class homelayout extends StatefulWidget {
  static const String routeNmae ='home';

  @override
  State<homelayout> createState() => _homelayoutState();
}

class _homelayoutState extends State<homelayout> {
  int currentindex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_background.png",width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.transparent,
            // shadowColor: Colors.transparent,
            title: Text("Islami",style: Theme.of(context).textTheme.headline4),),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: currentindex,
              onTap: (index){
                currentindex = index ;
                setState(() {});
              },
              items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png')) ,label: "moshaf"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')) ,label: "sebha"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')) ,label: "radio"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png')) ,label: "ahadeth"),

            ],),
          ),
          body: Tabs[currentindex],
        )
      ],
    );
  }
  List<Widget> Tabs =[QuranScreen(),SebhaScreen(),RadioScreen(),AhadethScreen()];
}
