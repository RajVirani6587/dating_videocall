import 'dart:ui';

import 'package:dating_videocall/model/model3.dart';
import 'package:dating_videocall/provider/top_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SuperheroCard extends StatelessWidget {
  const SuperheroCard({
    Key? key,
    required this.superhero,
    required this.factorChange,
  }) : super(key: key);

  final Superhero superhero;
  final double factorChange;

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
            top: separation * factorChange,
            bottom: size.height * .35,
            child: Opacity(
              opacity: 1.0 - factorChange,
              child: Transform.scale(
                scale: lerpDouble(1, .4, factorChange) ?? 1,
                child: Hero(
                  tag: superhero.pathImage,
                  child: Image.asset(superhero.pathImage),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            right: 100,
            top: size.height * .55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Hero(
                    tag: superhero.heroName,
                    child: Text(superhero.heroName.replaceAll(" ",'\n').toLowerCase(),
                      style: TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Hero(
                  tag: superhero.name,
                  child: Text(
                    superhero.name.toLowerCase(),
                    style: TextStyle(fontSize: 15.sp,color: Colors.white),
                  ),
                ),
                SizedBox(height: 25),
                Text.rich(
                  const TextSpan(
                    text: 'learn more',
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  style: GoogleFonts.spartan(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
