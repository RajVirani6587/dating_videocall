import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/flicked/flicked_screen.dart';
import 'package:dating_videocall/view/profile/profile_screen.dart';
import 'package:dating_videocall/view/store/viewstory_screen.dart';
import 'package:dating_videocall/view/video_screen/video_screen.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flicked_cards/flicked_cards.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({Key? key}) : super(key: key);

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  List WidgetsList=[
    Video_Screen(),
    ViewSyory_Screen(),
    Flicked_Screen(cardAnimation: FlipAnimation(),),
    Profile_Screen(),];
  @override
  void initState() {
    super.initState();
    setState(() {
      Provider.of<Top_Provider>(context,listen: false).i=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WidgetsList[Provider.of<Top_Provider>(context,listen: true).i] ,
        extendBody: true,
      bottomNavigationBar:  DotNavigationBar(
        unselectedItemColor: Colors.white,
        backgroundColor:Colors.pink,
        currentIndex:Provider.of<Top_Provider>(context,listen:true).i,
          onTap: (value){
            Provider.of<Top_Provider>(context,listen:false).changeicon(value);
          },
        dotIndicatorColor: Colors.white,
        selectedItemColor: Colors.purple,
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.home,size: 20.sp,),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border,size: 20.sp,),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.search,size: 20.sp,),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.person,size: 20.sp,),
          ),
        ],
      ),
    );
  }
}
