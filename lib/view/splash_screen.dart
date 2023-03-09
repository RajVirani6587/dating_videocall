import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dating_videocall/view/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:sizer/sizer.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  late StreamSubscription subscription;
  ValueNotifier<bool> isDeviceConnected = ValueNotifier(false);
  ValueNotifier<bool> isAlertSet = ValueNotifier(false);

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(alignment: Alignment.centerLeft,child: Lottie.asset("assets/lottie/64508-video-meeting-video-conference.json")),
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              if (isDeviceConnected.value == false) {
                Dialog();
              } else {
                Navigator.pushReplacement(context,PageRouteAnimator(
                  child:Open_Time_Screen(),
                  routeAnimation: RouteAnimation.topToBottom,
                  curve: Curves.slowMiddle,
                  duration: const Duration(milliseconds: 4000),
                  reverseDuration: const Duration(milliseconds: 3000),
                  ),
                );
              }
            },
            child: Container(
                margin: const EdgeInsets.only(
                    top: 5, bottom: 18),
                height: 7.h,
                width: 80.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color:  Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
              ),
          ),
        ],
      ),
    );
  }

  getConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen(
          (ConnectivityResult result) async {
        isDeviceConnected.value =
        (await InternetConnectionChecker().hasConnection);
        if (isDeviceConnected.value == false && isAlertSet.value == false) {
          Dialog();
          isAlertSet.value = true;
        } else {

        }
      },
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  Dialog() => Get.defaultDialog(
    barrierDismissible: false,
    backgroundColor: const Color(0xFFFD4E7B),
    titleStyle: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.bold),
    title: "No Internet",
    actions: [
      ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(const StadiumBorder()),
              backgroundColor:
              MaterialStateProperty.all(const Color(0XFFC38B00))),
          onPressed: () async {
            Get.back();
            isAlertSet.value = false;
            isDeviceConnected.value =
            await InternetConnectionChecker().hasConnection;
            if (!isDeviceConnected.value) {
              Dialog();
              isAlertSet.value = true;
            }
          },
          child: const Text("Retry"))
    ],
    content: SizedBox(
      height: 20.h,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/image/wifi-network-disconnected-not-available-lost-internet-connection-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.webp',height: 8.h,width: 8.h,fit: BoxFit.fill,),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "Check Your Data Connection \n Connect Internet & Try Again...",
                    style: TextStyle(fontSize: 13.sp,color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
