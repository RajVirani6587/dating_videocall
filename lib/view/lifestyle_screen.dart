import 'package:dating_videocall/view/permission_screen.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:sizer/sizer.dart';

class Lifestyle_Screen extends StatefulWidget {
  const Lifestyle_Screen({Key? key}) : super(key: key);

  @override
  State<Lifestyle_Screen> createState() => _Lifestyle_ScreenState();
}

class _Lifestyle_ScreenState extends State<Lifestyle_Screen> {
  final Key parallaxTwo = GlobalKey();
  int con= 0;
  @override
  Widget build(BuildContext context) {
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
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 4.h,),
                Align(alignment: Alignment.center,child: Text("What’s your life style?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.sp),)),
                SizedBox(height: 2.h,),
                Container(
                  height:17.h,
                  color: Colors.white30,
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(0,'Entertainment',"l1.jpg"),
                    Life(1,'Gaming',"l2.png"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(2,'Art',"l3.jpg"),
                    Life(3,'Animals',"l4.jpg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(4,'Comedy',"l5.png"),
                    Life(5,'Dance',"l6.webp"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(6,'Beauty',"l7.jpg"),
                    Life(7,'Music',"l8.webp"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(8,'ood & Drink',"l9.jpg"),
                    Life(9,'Sports',"l10.jpg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(10,'DIY',"l11.png"),
                    Life(11,'Science & Education',"l12.jpeg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(12,'Travel',"l13.jpg"),
                    Life(13,'Family',"l14.jpg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(14,'Anime & Movie',"l15.jpg"),
                    Life(15,'Technology',"l16.jpg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(16,'Outdoors',"l17.jpg"),
                    Life(17,'Culture',"l18.jpg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Life(18,'Health',"l19.jpg"),
                    Life(19,'Comics',"l20.jpg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context,PageRouteAnimator(
                          child: Permission_screen(),
                          routeAnimation: RouteAnimation.fadeAndRotate,
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
                          child: Permission_screen(),
                          routeAnimation: RouteAnimation.fadeAndRotate,
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
                                Color(0xFFFF237E).withOpacity(0.1),
                                Color(0xFFFF237E).withOpacity(0.05),
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
          ),
        ],
      ),
    );
  }
  Widget Life(int i,String txt,String image){
    return InkWell(
      onTap: (){
        setState(() {
          con=i;
        });
      },
      child: Column(
        children: [
          Container(decoration: BoxDecoration(border: Border.all(width: 3.sp,color:con==i?Colors.pinkAccent:Colors.transparent),
               borderRadius: BorderRadius.circular(18.sp)),
              child: ClipRRect(borderRadius: BorderRadius.circular(15.sp),child: Image.asset("assets/image/$image",height: 16.2.h,width: 16.2.h,fit: BoxFit.fill,))),
          SizedBox(height: 1.h,),
          Text(txt,style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold,fontFamily: AutofillHints.addressCity),),
          SizedBox(height: 2.h,),
        ],
      ),
    );
  }
}
