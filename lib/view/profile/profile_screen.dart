import 'dart:io';

import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/private_screen.dart';
import 'package:dating_videocall/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  final Key parallaxTwo = GlobalKey();
  Top_Provider? home_providert;
  Top_Provider? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Top_Provider>(context,listen: false);
    home_providert = Provider.of<Top_Provider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ParallaxRain(
            key: parallaxTwo,
            trail: true,
            dropColors: [
              Colors.red,
              Colors.pink,
              Colors.pink.shade900,
              Colors.redAccent,
              Colors.pinkAccent,
              Colors.blueGrey
            ],
          ),
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/image/t-adobestock-349950986.jpeg",height: 40.h,width:100.w ,fit: BoxFit.fill,),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          height: 17.h,
                          width: 17.h,
                          decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 3.sp,color: Colors.white)),
                          child: CircleAvatar(
                            backgroundImage: FileImage(File(home_providerf!.txtImage)),
                          ),
                        ),
                        SizedBox(height: 1.h,),
                       ElevatedButton(onPressed: (){},
                           style: ElevatedButton.styleFrom(backgroundColor: Colors.white54,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.sp))),
                           child: Text("${home_providerf!.txtNamee}",
                             style: TextStyle(color: Colors.pink,fontSize: 25.sp,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                ],
              ),
                SizedBox(height: 2.h,),
                Detailprofile("Gender","${home_providerf!.txtGender}"),
                Detailprofile("Age","${home_providerf!.txtAge}"),
                Detailprofile("Country","${home_providerf!.countryValue}"),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.symmetric( horizontal: 5.w),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, PageRouteAnimator(
                        child: PrivacyPolicy_Screen(),
                        routeAnimation: RouteAnimation.rightToLeft,
                        curve: Curves.easeOut,
                        duration:  Duration(milliseconds: 2500),
                        reverseDuration:  Duration(milliseconds: 1500),
                      ));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.logout,size: 30.sp,color: Colors.red,),
                        SizedBox(width: 1.w,),
                        Text("LogOut",style: TextStyle(color: Colors.red,fontSize: 20.sp),)
                      ],
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
  Widget Detailprofile(String name,String detail){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft,child: Text("$name",style: TextStyle(color: Colors.white70),)),
          SizedBox(height: 0.7.h,),
          Align(alignment: Alignment.centerLeft,child: Text("$detail",style: TextStyle(color: Colors.white,fontSize: 15.sp),)),
          SizedBox(height: 0.5.h,),
          Divider(height: 0.1.h,color: Colors.white,),
          SizedBox(height: 2.h,),
        ],
      ),
    );

  }
}
