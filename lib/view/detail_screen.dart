import 'dart:io';

import 'package:dating_videocall/provider/top_provider.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Detail_Screen extends StatefulWidget {
  const Detail_Screen({Key? key}) : super(key: key);

  @override
  State<Detail_Screen> createState() => _Detail_ScreenState();
}

class _Detail_ScreenState extends State<Detail_Screen> {
  Top_Provider? home_providert;
  Top_Provider? home_providerf;
  final Key parallaxTwo = GlobalKey();
  File f1 = File("");
  var txtkey = GlobalKey<FormState>();


  List<String> gender = ["Male","Female","others"];

  String select = 'Male';
  TextEditingController txtname = TextEditingController();
  TextEditingController txtgender = TextEditingController();
  TextEditingController txtage = TextEditingController();


  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Top_Provider>(context,listen: false);
    home_providert = Provider.of<Top_Provider>(context,listen: true);
    return Form(
      key: txtkey,
      child: Scaffold(
        backgroundColor: Colors.black,
        body:Stack(
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
                children: [
                  SizedBox(height: 4.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 4.w),
                    child: Align(alignment: Alignment.centerLeft,child: Text("Detail",style: TextStyle(color: Colors.white,fontSize: 20.sp),)),
                  ),
                  SizedBox(height: 5.h,),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){
                        bottomsheetdilaog();
                      },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.sp),
                            height: 22.h,
                            width: 22.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 5),
                              shape: BoxShape.circle,
                              color: Colors.white30,
                            ),
                            child: f1.path.isEmpty?
                            Container(height: 22.h,width: 22.h,
                                decoration: BoxDecoration(shape: BoxShape.circle,),
                                child: ClipRRect(borderRadius: BorderRadius.circular(80.sp),
                                    child: Image.asset("assets/image/person-1824144_960_720.webp",height: 22.h,width: 22.w,fit: BoxFit.fill,))):
                            CircleAvatar(backgroundImage: FileImage(f1),),
                          ),
                          Container(
                            height: 6.h,
                            width: 6.h,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red,),
                            child: Icon(Icons.camera_alt,color: Colors.white,size:25.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.circular(20.sp),),
                    height: 50.h,
                    child: Column(
                      children: [
                        SizedBox(height: 2.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal:5.w),
                          child: TextFormField(
                            validator: (value){
                              return value!.length < 2?'Name must be greater than two characters':null;
                            },
                            style: TextStyle(color: Colors.black),
                            controller: txtname,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white12,
                              prefixIcon: Icon(Icons.person,color: Colors.black,),
                              label: Text("NickName",style: TextStyle(color: Colors.black),),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide: BorderSide(width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide: BorderSide(width: 2,color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal:5.w),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Gender";
                                  }
                                  else {
                                    return null;
                                  }
                                },
                                style: TextStyle(color: Colors.black),
                                controller: txtgender,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white12,
                                  prefixIcon: Icon(Icons.call_split,color: Colors.black,),
                                  label: Text("Gender",style: TextStyle(color: Colors.black),),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    borderSide: BorderSide(width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    borderSide: BorderSide(width: 2,color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right: 5),
                                child: DropdownButton(
                                    value: select,
                                    items: [
                                      DropdownMenuItem(child: Text("Male",style: TextStyle(color: Color(0xFFFF4D67)),),value: "Male",),
                                      DropdownMenuItem(child: Text("Female",style: TextStyle(color: Color(0xFFFF4D67)),),value: "Female",),
                                      DropdownMenuItem(child: Text("others",style: TextStyle(color: Color(0xFFFF4D67)),),value: "others",),
                                    ],
                                    onChanged:(value){
                                      setState(() {
                                        txtgender.text=value! ;
                                        select = value;
                                      });
                                    }),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal:5.w),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Age";
                              }
                              else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.numberWithOptions(),
                            readOnly: true,
                            style: TextStyle(color: Colors.black),
                            controller: txtage,
                            onTap: (){
                              datepick();
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white12,
                              prefixIcon: Icon(Icons.calendar_month,color: Colors.black,),
                              label: Text("Age",style: TextStyle(color: Colors.black),),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide: BorderSide(width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide: BorderSide(width: 2,color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              if(txtkey.currentState!.validate() == true && f1.path.isEmpty==false){
                                home_providerf!.txtAge = txtage.text;
                                home_providerf!.txtGender = txtgender.text;
                                home_providerf!.txtNamee = txtname.text;
                                home_providerf!.txtImage = f1.path;
                                Navigator.pushReplacementNamed(context,'contrary');
                              }
                              else{
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return AlertDialog(
                                      title: Text('Red Alert',style: TextStyle(color: Colors.red),),
                                      content: Text('Please Upload a Photo'),
                                      actions: [
                                        InkWell(onTap:(){
                                          Navigator.pop(context);
                                        },
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Container(
                                              child: Text("ok",style: TextStyle(fontSize: 20),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
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
                                  Color(0xFF000000).withOpacity(0.5),
                                  Color(0xFF000000).withOpacity(0.5),
                                ],
                              ),
                              child: Center(child: Text("Continue",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w700),)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }  void datepick() async {
    DateTime? pickedDate = await showDatePicker(
      builder: (context, child){
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Color(0xFFFF4D67),
              onPrimary: Colors.white,
              onSurface: Colors.blueAccent,
            ),
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(0),
      lastDate: DateTime(2999),
    );
    if(pickedDate != null ){
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() {
        txtage = TextEditingController(text: "$formattedDate");
      });
    }
    else{
      print("Date is not selected");
    }
  }
  void bottomsheetdilaog(){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context:context,
        builder:(context){
          return Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), color: Colors.white,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: ()async{
                  ImagePicker img = ImagePicker();
                  XFile? f2 =  await img.pickImage(source: ImageSource.camera);
                  setState((){
                    f1 = File(f2!.path);
                  });
                  Navigator.pop(context);

                },child: Text("Take Photo",style: TextStyle(fontSize: 20),)),
                InkWell(onTap: ()async{
                  ImagePicker img = ImagePicker();
                  XFile? f2 =  await img.pickImage(source: ImageSource.gallery);
                  setState((){
                    f1 = File(f2!.path);
                  });
                  Navigator.pop(context);
                },
                    child: Text("Choose From Library",style: TextStyle(fontSize: 20))),
                InkWell(onTap: (){
                  Navigator.pop(context);
                },child: Text("Cancel",style: TextStyle(fontSize: 20))),
              ],
            ),
          );
        }
    );
  }

}
