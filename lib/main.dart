import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/Your_screen.dart';
import 'package:dating_videocall/view/bottom_screen.dart';
import 'package:dating_videocall/view/contrary%20_screen.dart';
import 'package:dating_videocall/view/detail_screen.dart';
import 'package:dating_videocall/view/first_screen.dart';
import 'package:dating_videocall/view/flicked/flicked_screen.dart';
import 'package:dating_videocall/view/imagesider_screen.dart';
import 'package:dating_videocall/view/intor_screen.dart';
import 'package:dating_videocall/view/lifestyle_screen.dart';
import 'package:dating_videocall/view/permission_screen.dart';
import 'package:dating_videocall/view/private_screen.dart';
import 'package:dating_videocall/view/profile/profile_screen.dart';
import 'package:dating_videocall/view/splash_screen.dart';
import 'package:dating_videocall/view/start_screen.dart';
import 'package:dating_videocall/view/store/Store_screen.dart';
import 'package:dating_videocall/view/store/video_viewscreen.dart';
import 'package:dating_videocall/view/store/viewstory_screen.dart';
import 'package:dating_videocall/view/video_screen/video_screen.dart';
import 'package:dating_videocall/view/video_screen/videocall_playScreen.dart';
import 'package:face_camera/face_camera.dart';
import 'package:flicked_cards/flicked_cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await FaceCamera.initialize();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Top_Provider>(create: (context)=>Top_Provider(),),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType){
          return    GetMaterialApp(
            debugShowCheckedModeBanner: false,
            //initialRoute: 'bottom',
            routes: {
              '/':(context)=>Splash_Screen(),
              'pp':(context)=>PrivacyPolicy_Screen(),
              'open':(context)=>Open_Time_Screen(),
              'sider':(context)=>ImageSider_Screen(),
              'intor':(context)=>Intor_Screen(),
              'detail':(context)=>Detail_Screen(),
              'contrary':(context)=>contrary_Screen(),
              'your':(context)=>Your_Screen(),
              'life':(context)=>Lifestyle_Screen(),
              'permisssion':(context)=>Permission_screen(),
              'start':(context)=>Start_Screen(),
              'bottom':(context)=>Bottom_Screen(),
              'video':(context)=>Video_Screen(),
              'videoplay':(context)=>Videocallplay_Screen(),
              'home':(context)=>StoryPage(),
              'vv':(context)=>Videoview_Screen(),
              'view':(context)=>ViewSyory_Screen(),
              'flicked':(context)=>Flicked_Screen(cardAnimation: FlipAnimation()),
              'profile':(context)=>Profile_Screen(),
            },
          );
        },
      ),
    ),
  );
}