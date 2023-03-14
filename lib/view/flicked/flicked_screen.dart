import 'package:dating_videocall/provider/top_provider.dart';
import 'package:dating_videocall/view/flicked/demo.dart';
import 'package:flicked_cards/flicked_cards.dart';
import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:provider/provider.dart';

class Flicked_Screen extends StatelessWidget {
  final CardAnimation cardAnimation;
  final Key parallaxTwo = GlobalKey();
  Flicked_Screen({
    Key? key,
    required this.cardAnimation,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   late Top_Provider home_providerf  = Provider.of<Top_Provider>(context,listen: false);
    late Top_Provider home_providert  = Provider.of<Top_Provider>(context,listen: true);
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
        count: home_providerf.marvelHeroes.length,
        debug: false,
        animationStyle:cardAnimation,// cardAnimation,
        onSwiped: (idx, dir) => print(' $dir $idx'),
        builder: (index, progress, context) {
          final superHeroe = home_providerf.marvelHeroes[index];
          return Container(
            child: Center(
              child: SuperheroCard(
                  superhero: superHeroe,
                  factorChange: 1 - progress),
            ),
          );
        },
      ),
    ],
  ),
);  
  }
}



