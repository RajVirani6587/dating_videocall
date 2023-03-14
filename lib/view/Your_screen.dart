import 'package:dating_videocall/view/lifestyle_screen.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:sizer/sizer.dart';

class Your_Screen extends StatefulWidget {
  const Your_Screen({Key? key}) : super(key: key);

  @override
  State<Your_Screen> createState() => _Your_ScreenState();
}

class _Your_ScreenState extends State<Your_Screen> {
  final Key parallaxTwo = GlobalKey();
  int con=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 4.h,),
              Align(alignment: Alignment.center,child: Text("Selecte Your Match?",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),)),
              SizedBox(height: 1.h,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            con=0;
                          });
                        },
                        child: Column(
                          children: [
                            Container(decoration: BoxDecoration(border: Border.all(width: 3.sp,color:con==0?Colors.pinkAccent:Colors.transparent),borderRadius: BorderRadius.circular(20.sp)),
                                child: Image.asset("assets/image/Rectangle 1.png",height: 19.h,width: 19.h,fit: BoxFit.fill,)),
                            SizedBox(height: 1.h,),
                            Text("Marriage",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontFamily: AutofillHints.addressCity),),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            con=1;
                          });
                        },
                        child: Column(
                          children: [
                            Container(decoration: BoxDecoration(border: Border.all(width: 3.sp,color:con==1?Colors.pinkAccent:Colors.transparent),borderRadius: BorderRadius.circular(20.sp)),child: Image.asset("assets/image/Rectangle 2.png",height: 19.h,width: 19.h,fit: BoxFit.fill,)),
                            SizedBox(height: 1.h,),
                            Text("Hangout",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontFamily:AutofillHints.addressCity),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(onTap: (){
                        setState(() {
                          con=2;
                        });
                      },
                        child: Column(
                          children: [
                            Container(decoration: BoxDecoration(border: Border.all(width: 3.sp,color:con==2?Colors.pinkAccent:Colors.transparent),borderRadius: BorderRadius.circular(20.sp)),child: Image.asset("assets/image/Rectangle 3.png",height: 19.h,width: 19.h,fit: BoxFit.fill,)),
                            SizedBox(height: 1.h,),
                            Text("Friends",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontFamily: AutofillHints.addressCity),),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            con=3;
                          });
                        },
                        child: Column(
                          children: [
                            Container(decoration: BoxDecoration(border: Border.all(width: 3.sp,color:con==3?Colors.pinkAccent:Colors.transparent),borderRadius: BorderRadius.circular(20.sp)),child: Image.asset("assets/image/Rectangle 4.png",height: 19.h,width: 19.h,fit: BoxFit.fill,)),
                            SizedBox(height: 1.h,),
                            Text("Business",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontFamily: AutofillHints.addressCity),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(height: 17.h,color: Colors.white30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context,PageRouteAnimator(
                        child: Lifestyle_Screen(),
                        routeAnimation: RouteAnimation.leftToRightWithFade,
                        curve: Curves.easeOut,
                        duration:  Duration(milliseconds: 5000),
                        reverseDuration:  Duration(milliseconds: 4000),
                      ));
                    },
                    child: GlassmorphicContainer(
                        width: 45.w,
                        height: 7.h,
                        borderRadius: 20,
                        blur: 2,
                        alignment: Alignment.bottomCenter,
                        border: 2,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.1),
                              Color(0xFFFFFFFF).withOpacity(0.05),
                            ],
                            stops: [
                              0.1,
                              1,
                            ]),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: Center(child: Text("SKIP",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context,PageRouteAnimator(
                        child: Lifestyle_Screen(),
                        routeAnimation: RouteAnimation.leftToRightWithFade,
                        curve: Curves.easeOut,
                        duration:  Duration(milliseconds: 5000),
                        reverseDuration:  Duration(milliseconds: 4000),
                      ));
                    },
                    child: GlassmorphicContainer(
                        width: 45.w,
                        height: 7.h,
                        borderRadius: 20,
                        blur: 2,
                        alignment: Alignment.bottomCenter,
                        border: 2,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.1),
                              Color(0xFFFFFFFF).withOpacity(0.05),
                            ],
                            stops: [
                              0.1,
                              1,
                            ]),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: Center(child: Text("CONTIUNUE",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
