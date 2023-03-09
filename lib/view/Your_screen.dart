import 'package:flutter/material.dart';

class Your_Screen extends StatefulWidget {
  const Your_Screen({Key? key}) : super(key: key);

  @override
  State<Your_Screen> createState() => _Your_ScreenState();
}

class _Your_ScreenState extends State<Your_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    );
  }
}
