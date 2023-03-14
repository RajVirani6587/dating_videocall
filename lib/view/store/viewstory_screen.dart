import 'package:dating_videocall/model/model3.dart';
import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/bottom_screen.dart';
import 'package:dating_videocall/view/store/Store_screen.dart';
import 'package:dating_videocall/view/store/video_viewscreen.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:page_route_animator/page_route_animator.dart';
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
        fit: StackFit.expand,
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
              SizedBox(
                height: 10.h,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: home_providerf!.sampleUsers.length,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding:  EdgeInsets.only(top: 1.h,left: 1.w,right: 1.h),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              print('$index');
                              home_providerf!.pick = UserModel(
                                userName: home_providerf!.sampleUsers[index].userName,
                                stories:  home_providerf!.sampleUsers[index].stories,
                                imageasset: home_providerf!.sampleUsers[index].imageasset,
                              );
                              Navigator.push(context,PageRouteAnimator(
                                child: StoryPage(),
                                routeAnimation: RouteAnimation.sizeFromTop,
                                curve: Curves.easeOut,
                                duration:  Duration(milliseconds: 2500),
                                reverseDuration:  Duration(milliseconds: 1500),
                              ));
                            },
                            child: Container(
                              height:9.h,
                              width: 9.h,
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
                                  height:9.h,
                                  width: 9.h,
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
              SizedBox(
                height: 79.h,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: home_providerf!.l1.length,
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
                          Navigator.push(context,PageRouteAnimator(
                            child: Videoview_Screen(),
                            routeAnimation: RouteAnimation.scale,
                            curve: Curves.easeOut,
                            duration:  Duration(milliseconds: 2500),
                            reverseDuration:  Duration(milliseconds: 1500),
                          ));
                        },
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: ClipRRect(borderRadius: BorderRadius.circular(10.sp),
                                child: Image.asset("${home_providerf!.l1[index].Image}",
                                  fit: BoxFit.fill,
                                  height:50.h,
                                  width: 84.w,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal:6.5.w),
                              child: Container(
                                height: 50.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding:  EdgeInsets.only(top: 0.2.h,left:1.w ),
                                        child:
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(backgroundColor: Colors.white54,shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20),
                                                side: BorderSide(color: Colors.white,width: 1.5))),
                                            onPressed: (){},
                                            child:Text("${home_providerf!.l1[index].flag} ${home_providerf!.l1[index].centry}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 35.w),
                                          child: Icon(Icons.play_circle_outline_sharp,color: Colors.white,size: 45.sp,),
                                        ),
                                        Container(
                                          height: 20.h,
                                          width: 15.w,
                                          decoration: BoxDecoration(
                                            color: Colors.white54,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.sp),bottomLeft:Radius.circular(10.sp) ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              LikeButton(
                                                size: 40,
                                                circleColor: CircleColor(
                                                    start: Colors.pinkAccent,
                                                    end: Colors.redAccent),
                                                bubblesColor: BubblesColor(
                                                  dotPrimaryColor: Color(0xff33b5e5),
                                                  dotSecondaryColor: Color(0xff0099cc),
                                                ),
                                                likeBuilder: (bool isLiked) {
                                                  return Icon(
                                                    isLiked
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    color: isLiked
                                                        ? Colors.red
                                                        : Colors.black,
                                                    size: 40,
                                                  );
                                                },
                                              ),
                                              LikeButton(
                                                size: 40,
                                                circleColor: CircleColor(
                                                    start: Colors.blue.shade900,
                                                    end: Colors.blue.shade700),
                                                bubblesColor: BubblesColor(
                                                  dotPrimaryColor: Color(
                                                      0xff5d8e9f),
                                                  dotSecondaryColor: Color(
                                                      0xff73d0fd),
                                                ),
                                                likeBuilder: (bool isLiked) {
                                                  return Icon(
                                                    isLiked
                                                        ? Icons.thumb_up
                                                        : Icons.thumb_up_off_alt_outlined,
                                                    color: isLiked
                                                        ? Colors.blue
                                                        : Colors.black,
                                                    size: 40,
                                                  );
                                                },
                                              ),
                                              PopupMenuButton(
                                                  initialValue: 3,
                                                  icon: Icon(Icons.more_horiz,color: Colors.black,size: 30.sp,),
                                                  itemBuilder: (context){
                                                    return [
                                                      PopupMenuItem(
                                                          child: InkWell(onTap: (){
                                                            reportdilaog();
                                                          },
                                                              child: Text("Report"))),
                                                      PopupMenuItem(
                                                          child: InkWell(onTap: (){
                                                            Blockdialog();
                                                          },child: Text("Block",))),
                                                    ];
                                                  }
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.h,left: 0.5.w),
                                      child: Row(
                                        children: [
                                          ClipOval(child: Image.asset("${home_providerf!.l1[index].Image}",height: 6.h,width: 6.h,fit: BoxFit.fill,),),
                                          SizedBox(width:1.w ,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text("${home_providerf!.l1[index].Name}",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                                                Text("❤ ${home_providerf!.l1[index].like}k",style: TextStyle(color: Colors.white),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void reportdilaog(){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context:context,
        builder:(context){
          return Container(
            height: 150.h,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), color: Colors.black.withOpacity(0.4),),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical:1.5.h),
                        child: Container(height:0.5.h,width: 18.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey,),),
                      ),
                    ),
                    Align(alignment: Alignment.center,child: Text("Report",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18.sp),)),
                    SizedBox(height: 1.h,),
                    Text("Why are you reporting this post?",style: TextStyle(color: Colors.white,fontSize:15.sp,fontWeight: FontWeight.w500 ),),
                    SizedBox(height: 1.h,),
                    Text("Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don't wait.",style: TextStyle(color: Colors.white60),),
                    DD("I just don't like it"),
                    DD("it's spam"),
                    DD("Nudity or sexual activity"),
                    DD("Hate speech or symbols"),
                    DD("Violence or dangerous organisations"),
                    DD("False information"),
                    DD("Bullying or harassment"),
                    DD("Scam or fraud"),
                    DD("Intellectual property violation"),
                    DD("Suicide or self-injury"),
                    DD("Sale of illegal or regulated goods"),
                    DD("Eating disorders"),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
  void Blockdialog(){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context:context,
        builder:(context){
          return Container(
            height: 20.h,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), color: Colors.black.withOpacity(0.7),),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.h,),
                    Text("Block Video",style: TextStyle(color: Colors.red,fontSize: 18.sp),),
                    Text("Block Viddeo Please Enter Block.",style: TextStyle(color: Colors.red),),
                    SizedBox(height: 3.h,),

                    InkWell(onTap: (){
                      dialog();
                    },
                      child: Container(
                        height: 7.h,
                        width: 80.w,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.sp)),
                        child: Center(child: Text("Block",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
  Widget DD(String txt) {
    return Column(
      children: [
        SizedBox(height: 1.h,),
        InkWell(onTap: (){dialog();},child: Text("$txt",style: TextStyle(color: Colors.white,fontSize:15.sp,fontWeight: FontWeight.w500 ),)),
      ],
    );
  }
  Future<bool> dialog() async {
    back();
    return await false;
  }

  void back(){
    Navigator.pushReplacement(context, PageRouteAnimator(
      child: Bottom_Screen(),
      routeAnimation: RouteAnimation.rightToLeft,
      curve: Curves.easeOut,
      duration:  Duration(milliseconds: 2500),
      reverseDuration:  Duration(milliseconds: 1500),
    ));
  }

}
