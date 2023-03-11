import 'package:dating_videocall/model/model3.dart';
import 'package:dating_videocall/provider/top_provider.dart';
import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Video_Screen extends StatefulWidget {
  const Video_Screen({Key? key}) : super(key: key);

  @override
  State<Video_Screen> createState() => _Video_ScreenState();
}

class _Video_ScreenState extends State<Video_Screen> {
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
          GridView.builder(
            itemCount: home_providerf!.l1.length,
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisExtent: 36.h),
            itemBuilder: (context,index){
              return  Padding(
                padding:  EdgeInsets.all(5.sp),
                child: InkWell(
                  onTap: (){
                    home_providerf!.Datapickkk = videocall(
                      TImage: home_providerf!.l1[index].TImage,
                      like: home_providerf!.l1[index].like,
                      Image2: home_providerf!.l1[index].Image2,
                      flag: home_providerf!.l1[index].flag,
                      centry:home_providerf!.l1[index].centry,
                      con:  home_providerf!.l1[index].con,
                      Image:home_providerf!.l1[index].Image,
                      km:   home_providerf!.l1[index].km,
                      Name: home_providerf!.l1[index].Name,
                      year: home_providerf!.l1[index].year,
                      video:home_providerf!.l1[index].video,
                    );
                    Navigator.pushNamed(context,'vplay');
                  },
                  child: Column(
                    children: [
                      Container(
                        height:30.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 3.sp,)
                            ],
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(10.sp),
                              child: Image.asset("${home_providerf!.l1[index].Image}",
                                fit: BoxFit.fill,
                                height:35.h,
                                width: 48.w,
                              ),
                            ),
                            Container(
                              height:35.h,
                              width: 48.w,
                              decoration: BoxDecoration(gradient: LinearGradient(colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.pink,
                              ],
                                  begin: Alignment.topCenter,end: Alignment.bottomCenter),borderRadius: BorderRadius.circular(10.sp)),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(3.sp ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 3.h,
                                      width: 13.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.sp),
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      child: Center(child: Text("Live",style: TextStyle(color: Color(0xFFFF4D67),fontSize: 10.sp),)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(3.sp ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 3.5.h,
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.sp),
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.female,color: Color(0xFFFF4D67),size: 15.sp,),
                                            Text("${home_providerf!.l1[index].centry}",style: TextStyle(fontSize: 7.sp,color: Colors.white),),
                                          ],
                                        ),
                                      ),
                                      Text("${home_providerf!.l1[index].flag}",style: TextStyle(fontSize: 15.sp),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 4.h,
                            width: 4.h,
                            child: CircleAvatar(backgroundImage: AssetImage("${home_providerf!.l1[index].Image}")),
                          ),
                          Text("❤ ${home_providerf!.l1[index].like} k",style: TextStyle(color: Color(0xFFFF4D67)),)
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
