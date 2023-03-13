import 'package:dating_videocall/provider/top_provider.dart';
import 'package:flicked_cards/flicked_cards.dart';
import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';

class Flicked_Screen extends StatefulWidget {
  const Flicked_Screen({Key? key}) : super(key: key);

  @override
  State<Flicked_Screen> createState() => _Flicked_ScreenState();
}

class _Flicked_ScreenState extends State<Flicked_Screen> {
  final Key parallaxTwo = GlobalKey();
  Top_Provider? home_providert;
  Top_Provider? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providerf  = Provider.of<Top_Provider>(context,listen: false);
    home_providert  = Provider.of<Top_Provider>(context,listen: true);
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
          FlickedCards(
            count:home_providerf!.l1.length,
            animationStyle: FlipAnimation(),
            onSwiped: (idx, dir) => print('>>> $dir $idx'),
            builder: (index, progress, context) {
              return Container(
                child: Center(
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
