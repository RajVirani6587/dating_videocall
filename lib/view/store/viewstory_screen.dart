import 'package:dating_videocall/model/model3.dart';
import 'package:dating_videocall/provider/top_provider.dart';
import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class ViewSyory_Screen extends StatefulWidget {
  const ViewSyory_Screen({Key? key}) : super(key: key);

  @override
  State<ViewSyory_Screen> createState() => _ViewSyory_ScreenState();
}

class _ViewSyory_ScreenState extends State<ViewSyory_Screen> {
  final Key parallaxTwo = GlobalKey();
  Top_Provider ? home_providert;
  Top_Provider ? home_providerf;
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
              Align(alignment: Alignment.topLeft,
                  child: Padding(
                 padding:  EdgeInsets.only(left: 2.h),
                child: Text("VideoDat",style: TextStyle(color: Colors.white,fontSize: 18.sp,),),
              )),
              SizedBox(height: 1.h,),
              Expanded(
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: home_providerf!.sampleUsers.length,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding:  EdgeInsets.all(5.sp),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              home_providerf!.pick = UserModel(
                                userName: home_providerf!.sampleUsers[index].userName,
                                stories:  home_providerf!.sampleUsers[index].stories,
                                imageasset: home_providerf!.sampleUsers[index].imageasset,
                              );
                              Navigator.pushNamed(context,'home');
                            },
                            child: Container(
                              height:7.h,
                              width: 7.h,
                              decoration: BoxDecoration(
                                border: Border.all(width: 2.sp,color: Colors.pinkAccent),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 3.sp,)
                                  ],
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: Image.asset("${home_providerf!.sampleUsers[index].imageasset}",
                                  fit: BoxFit.fill,
                                  height:7.h,
                                  width: 7.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );


                  },
                ),
              ),
              SizedBox(height: 1.h,),

            ],
          ),
        ],
      ),
    );
  }
}
