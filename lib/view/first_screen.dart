import 'package:dating_videocall/view/imagesider_screen.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:sizer/sizer.dart';



class Open_Time_Screen extends StatefulWidget {
  const Open_Time_Screen({Key? key}) : super(key: key);

  @override
  State<Open_Time_Screen> createState() => _Open_Time_ScreenState();
}

class _Open_Time_ScreenState extends State<Open_Time_Screen> {
  final Key parallaxTwo = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(
        color: Colors.black,
        key: UniqueKey(),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
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
               SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 30.h,),
                      Align(
                        alignment: Alignment.center,
                        child: Lottie.asset("assets/lottie/85707-like-and-love.json",height: 20.h,width: 20.h,fit: BoxFit.fill)
                      ),
                      Text("Meet Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 23.sp,letterSpacing: 2),),
                      Text("SOCIAL APP",style: TextStyle(color: Colors.red,fontSize: 10.sp,letterSpacing: 5),),
                      SizedBox(height: 30.h,),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context,
                           PageRouteAnimator(
                            child:ImageSider_Screen(),
                            routeAnimation: RouteAnimation
                                .bottomRightToTopLeftWithFadeRotateAndScale,
                            curve: Curves.easeOut,
                            duration:  Duration(milliseconds: 5000),
                            reverseDuration:  Duration(milliseconds: 4000),
                            ),
                          );
                        },
                          child:GlassmorphicContainer(
                              width: 85.w,
                              height: 7.h,
                              borderRadius: 20,
                              blur: 8,
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
                              child: Center(child: Text("GET STARTED",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))),
                      ),
                    ],
                  ),
                ),
            ],
        ),
      ),
    );
  }
}
