import 'package:dating_videocall/view/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:sizer/sizer.dart';

class PrivacyPolicy_Screen extends StatefulWidget {
  const PrivacyPolicy_Screen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy_Screen> createState() => _PrivacyPolicy_ScreenState();
}

class _PrivacyPolicy_ScreenState extends State<PrivacyPolicy_Screen> {
  bool value = false;
  bool value1 = false;
  final Key parallaxTwo = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
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
              SizedBox(
                height: 4.h,
              ),
              Expanded(
                child: ListTile(
                  leading: Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink),
                    child: Icon(
                      Icons.edit_note,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  title: Text(
                    "Terms of use",
                    style: TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child:GlassmorphicContainer(
                    width: 95.w,
                    height: 65.h,
                    borderRadius: 15.sp,
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
                    child: Padding(
                      padding:  EdgeInsets.all(5.0.sp),
                      child: SelectableText(
                        """Here there’s no place for:

Harassment

Don't publish or send messages, videos or photos with damaging, threatening, misleading, defamatory, rancorous, aggressive, racist, vulgar, denigrating, indecent, insulting, violent, obscene or pornographic content.
Spam
Don't spam, don't try to recruit votes, don't send unsolicited commercials or chain letters and don't flood or write excessively long texts.
Illegal activities

Don't share content for which you don't hold the necessary ownership rights. You are solely responsible for the content you publish and share. This app cannot be held liable if you share content for which you don't hold the rights.

Don't post racist, sexist or hateful remarks, videos or photos. We feel bad for you if you feel the need to do this in your life and this app is definitely not the place to do it.

Don't try to hack someone else's account. By committing such offences, you risk a prison sentence and/or monetary fine.

Don't offer prostitution or escort services.

Do not engage in child pornography. Don’t do this anywhere else either.

Failure to follow these guidelines will result either in a warning or blocking from the platform. Please be aware that we are not obliged to warn you before we do this. In case of serious breaches or if we notice you're under the age of 18, we will immediately block you from the site without leaving you an option to get your account back.
These guidelines are meant to keep this platform safe place for everyone. If you don't agree with them, please join another platform. And maybe do some soul-searching.

1. Please respect other users. While using our app, It is forbidden to:

Use profanity of any kind, behave in an anappropriate manner, and offend other users through either actions or words;
Threaten other users in any way
No flirting
No pushing to send pics or contact details
No racism, bullying or violence
No sexual/abusive behaviour
No spam

2. Vulgar or adult behaviour in chat is unacceptable.

Users may not Display themselves in chat while naked or wearing underwear only;
Users may not Show their naked torso without also displaying their face;
Users may not Move their webcam below their chest area;
Users may not Display or flash their genitals or other intimate parts of their body;
Users may not Touch their genitals in sexual manner, even through their clothes
Users may not Suggest or ask other users for virtual- or cyber-sex;
Users may not Use words or phrases that may have obscene, vulgar, or sexual context;
Users may not Make gestures or take any actions that might be considered obscene.

3. Users of this app would like to see who they are talking to. Using irrelevant images or pre-recorded videos instead of showing yourself is forbidden:

Do not turn your webcam to face the screen of your computer, mobile phone, tablet, or television;
Do not face your webcam towards still pictures or any irrelevant images;
Do not face your webcam towards any text messages, books, or other forms of written text;
Do not use any webcam emulator or othe software which helps you to broadcast irrelevant images and/or video instead of yourself.

4. All forms of spam are forbidden from the chat. You may not, at any time:

Broadcast or display advertising images or messages;
Request other users to take part in perform any actions on app out side Video Chat app.

5. Should another user violate the Chat Rules in your presence, you may:

Complain about the ations of another user along with an image and message. Based on the evidence, our moderators will make a decision on whether or not to ban the offender. Moderators are available to consider and react to complaints 24 hours a day, 7 days a week, including weekends and holidays;
Should a user receive numerous complaints about the violations of Chat Ruls, system bans are in place to automatically ban offenders. System bans take into account numerous factors to avoids unfair bans or banning users by mistake;
It isessential that if another user violates the Chat Rules or offends you any way the issue is reolved by official complaint only. Do not attempt to resolve the issue by offending the other user in response or violating the Chat Rules your self. If you do, you become violator also and are eligible to get banned.

Please Note: We are continually working hard and putting a high focus on preventing any violation of our Chat Rules and punish users who continue to breach them. However, we cannot be held responsible for the actions of all users and cannot guarantee that all violators will be banned. When you complain and report against violators, you are helping us make this app safer chat environment and helping us to find and remove all violators.
By using our chat service, you accept and agree to the Chat Rules mentioned above. We reserve the right to change or amend these rules from time to time. We will attempt to notify users of such changes, howewer, it is the responsibility of all users on This App to track these changes themselves.""",
                        style: TextStyle(color: Colors.white),
                      ),
                    ) ,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(width: 2.0, color: Colors.pink),
                    ),
                    checkColor: Colors.white,
                    activeColor: Colors.pink,
                    focusColor: Colors.white,
                    value: this.value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Flexible(
                    child: Text(
                      'I understand that sharing of inappropriate conntent wil not be tolerated.',
                      style: TextStyle(fontSize: 10.sp, color: Colors.white,),
                    ),
                  ), //Text
                  SizedBox(width: 10.w), //SizedBox//Checkbox
                ], //<Widget>[]
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(width: 2.0, color: Colors.pink),
                    ),
                    checkColor: Colors.white,
                    activeColor: Colors.pink,
                    focusColor: Colors.white,
                    value: this.value1,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value1 = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Flexible(
                    child: Text(
                      'I Confirm that I\'m 18 years old or above.',
                      style: TextStyle(fontSize: 10.sp, color: Colors.white),
                    ),
                  ), //Text
                  SizedBox(width: 10.w),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (this.value == true && this.value1 == true) {
                        Navigator.pushReplacement(context, PageRouteAnimator(
                          child:Open_Time_Screen(),
                          routeAnimation: RouteAnimation.fadeAndScale,
                          curve: Curves.slowMiddle,
                          duration: const Duration(milliseconds: 4000),
                          reverseDuration: const Duration(milliseconds: 3000),
                        ),);
                      }
                    },
                    child: Container(
                        height: 7.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.sp)),
                        child: Center(
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
