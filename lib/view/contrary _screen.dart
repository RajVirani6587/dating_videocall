
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/Your_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class contrary_Screen extends StatefulWidget {
  const contrary_Screen({Key? key}) : super(key: key);

  @override
  State<contrary_Screen> createState() => _contrary_ScreenState();
}

class _contrary_ScreenState extends State<contrary_Screen> {

  final Key parallaxTwo = GlobalKey();
  Top_Provider ? home_providert;
  Top_Provider ? home_providerf;
  bool valide =false;

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
              SizedBox(height: 4.h,),
              Text("Country",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
              SizedBox(height: 4.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: SelectState(dropdownColor: Colors.black.withOpacity(0.7),
                  style: TextStyle(fontSize: 10.sp,color: Colors.white),
                  onCountryChanged: (value) {
                    setState(() {
                      home_providerf!.countryValue = value;
                      valide =true;
                    });
                  },
                  onStateChanged:(value) {
                    setState(() {
                      home_providerf!.stateValue = value;
                    });
                  },
                  onCityChanged:(value) {
                    setState(() {
                      home_providerf!.cityValue = value;
                      }
                    );
                  },
                ),
              ),
              SizedBox(height: 4.h,),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: (){
                    if(valide==true){
                      Navigator.pushReplacement(context,PageRouteAnimator(
                        child: Your_Screen(),
                        routeAnimation: RouteAnimation.bottomLeftToTopRightWithScale,
                        curve: Curves.easeOut,
                        duration:  Duration(milliseconds: 5000),
                        reverseDuration:  Duration(milliseconds: 4000),
                      ));
                    }
                    else{
                      Get.snackbar("Red Alert", "Please fill all boxes.",colorText: Colors.red,snackPosition: SnackPosition.BOTTOM,margin:EdgeInsets.only(bottom: 8.h));
                    }
                  },
                  child: GlassmorphicContainer(
                    width: 80.w,
                    height:7.h,
                    borderRadius: 20.sp,
                    blur: 50,
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
                        Color(0xFFffffff).withOpacity(0.5),
                      ],
                    ),
                    child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w700),)),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
