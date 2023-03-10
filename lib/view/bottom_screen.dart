import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/contrary%20_screen.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({Key? key}) : super(key: key);

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  List WidgetsList=[contrary_Screen(),contrary_Screen(),contrary_Screen(),contrary_Screen(),];
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
        currentIndex:Provider.of<Top_Provider>(context,listen:true).i,
          onTap: (value){
            Provider.of<Top_Provider>(context,listen:false).changeicon(value);
          },
        dotIndicatorColor: Colors.black,
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Colors.purple,
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            selectedColor: Colors.pink,
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.search),
            selectedColor: Colors.orange,
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
