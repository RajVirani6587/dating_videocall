import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/intor_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class ImageSider_Screen extends StatefulWidget {
  const ImageSider_Screen({Key? key}) : super(key: key);

  @override
  State<ImageSider_Screen> createState() => _ImageSider_ScreenState();
}

class _ImageSider_ScreenState extends State<ImageSider_Screen> {
  final List<String> titles = ["", "", "", "", "", "", ];

  final List<Widget> images = [
    Container(
      child: Image.asset("assets/image/s1.png"),
    ),
    Container(
      child: Image.asset("assets/image/s3.png"),
    ),
    Container(
      child: Image.asset("assets/image/s2.png"),
    ),
    Container(
      child: Image.asset("assets/image/s4.png"),
    ),
    Container(
      child: Image.asset("assets/image/s5.png"),
    ),
    Container(
      child: Image.asset("assets/image/s6.png"),
    ),
  ];
  final Key parallaxTwo = GlobalKey();
  Top_Provider? home_providert;
  Top_Provider? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Top_Provider>(context,listen: false);
    home_providert = Provider.of<Top_Provider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
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
            Center(
              child: GlassmorphicContainer(
                width: 100.w,
                height:100.h,
                borderRadius: 0,
                blur: 2,
                alignment: Alignment.bottomCenter,
                border: 0,
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
                child: Column(
                  children: [
                    SizedBox(height: 10.h,),
                    Text("Meet Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,fontSize: 23.sp,letterSpacing: 2),),
                    Text("SOCIAL APP",style: TextStyle(color: Colors.redAccent,fontSize: 10.sp,letterSpacing: 5),),
                    SizedBox(height: 3.h,),
                    Text("Discover romance.",style: TextStyle(color: Colors.white,fontSize: 10.sp,letterSpacing: 2),),
                    Text("Waiting for something special.",style: TextStyle(color: Colors.white,fontSize: 10.sp,letterSpacing: 2),),
                    SizedBox(height: 3.h,),
                    Container(
                      height: 40.h,
                      width: 50.w,
                      child: VerticalCardPager(
                        align: ALIGN.LEFT,
                          titles: titles,
                          images:images,
                          textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 5.sp), // optional
                          onPageChanged: (index) {
                            home_providerf!.changsposition(index);
                          },
                          initialPage: 3, // optional
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    DotsIndicator(
                      dotsCount: home_providert!.d1.length,
                      position: home_providert!.l.toDouble(),
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      height: 16.h,
                      color: Colors.white,
                    ),
                    SizedBox(height: 1.5.h,),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context,
                          PageRouteAnimator(
                            child:Intor_Screen(),
                            routeAnimation: RouteAnimation.topLeftToBottomRightWithFadeAndRotate,
                            curve: Curves.easeOut,
                            duration:  Duration(milliseconds: 5000),
                            reverseDuration:  Duration(milliseconds: 4000),
                          ),
                        );
                      },
                      child: GlassmorphicContainer(
                        width: 80.w,
                        height:7.h,
                        borderRadius: 10,
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
                        child:Center(child: Text("START",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
