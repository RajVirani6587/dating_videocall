import 'dart:ui';

import 'package:dating_videocall/model/model3.dart';
import 'package:dating_videocall/view/bottom_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:sizer/sizer.dart';

class SuperheroCard extends StatefulWidget {
  const SuperheroCard({
    Key? key,
    required this.superhero,
    required this.factorChange,
  }) : super(key: key);

  final Superhero superhero;
  final double factorChange;

  @override
  State<SuperheroCard> createState() => _SuperheroCardState();
}

class _SuperheroCardState extends State<SuperheroCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final separation = size.height * .24;
    return OverflowBox(
      alignment: Alignment.topCenter,
      maxHeight: size.height,
      child: Stack(
        children: [
          Positioned.fill(
            top: separation,
            child: Hero(
              tag: "",
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xff721847),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),

          Positioned(
            left: 20,
            right: 20,
            top: separation * widget.factorChange,
            bottom: size.height * .40,
            child: Opacity(
              opacity: 1.0 - widget.factorChange,
              child: Transform.scale(
                scale: lerpDouble(1, .4, widget.factorChange) ?? 1,
                child: Hero(
                  tag: widget.superhero.pathImage,
                  child: Image.asset(widget.superhero.pathImage),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            right: 100,
            top: size.height * .60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      child: Hero(
                        tag: widget.superhero.heroName,
                        child: Text(widget.superhero.heroName.replaceAll(" ",'\n').toLowerCase(),
                          style: TextStyle(color: Colors.white,fontSize: 28.sp,fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    PopupMenuButton(
                        initialValue: 3,
                        icon: Icon(Icons.more_vert,color: Colors.white,size: 30.sp,),
                        itemBuilder: (context){
                          return [
                            PopupMenuItem(
                                child: InkWell(onTap: (){
                                  reportdilaog(context);
                                },
                                    child: Text("Report"))),
                            PopupMenuItem(
                                child: InkWell(onTap: (){
                                  Blockdialog(context);
                                },child: Text("Block",))),
                          ];
                        }
                    ),
                  ],
                ),
                Hero(
                  tag: widget.superhero.name,
                  child: Text(
                    widget.superhero.name.toLowerCase(),
                    style: TextStyle(fontSize: 15.sp,color: Colors.white),
                  ),
                ),
                SizedBox(height: 2.h),
                Text.rich(
                  const TextSpan(
                    text: 'Swipe to Right to left',
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Text(
                         "↔",
                          style: TextStyle(fontSize:40,color: Colors.amber),
                        ),
                      )
                    ],
                  ),
                  style: GoogleFonts.spartan(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void reportdilaog(BuildContext context){
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
                    DD("I just don't like it",context),
                    DD("it's spam",context),
                    DD("Nudity or sexual activity",context),
                    DD("Hate speech or symbols",context),
                    DD("Violence or dangerous organisations",context),
                    DD("False information",context),
                    DD("Bullying or harassment",context),
                    DD("Scam or fraud",context),
                    DD("Intellectual property violation",context),
                    DD("Suicide or self-injury",context),
                    DD("Sale of illegal or regulated goods",context),
                    DD("Eating disorders",context),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }

  void Blockdialog(BuildContext context){
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
                      dialog(context);
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

  Widget DD(String txt,BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 1.h,),
        InkWell(onTap: (){dialog(context);},child: Text("$txt",style: TextStyle(color: Colors.white,fontSize:15.sp,fontWeight: FontWeight.w500 ),)),
      ],
    );
  }

  Future<bool> dialog(BuildContext context ) async {
    back(context);
    return await false;
  }

  void back(BuildContext context){
    Navigator.pushReplacement(context, PageRouteAnimator(
      child: Bottom_Screen(),
      routeAnimation: RouteAnimation.rightToLeft,
      curve: Curves.easeOut,
      duration:  Duration(milliseconds: 2500),
      reverseDuration:  Duration(milliseconds: 1500),
    ));
  }
}
