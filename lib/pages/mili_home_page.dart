import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiliHomePage extends StatefulWidget {
  const MiliHomePage({Key? key}) : super(key: key);

  @override
  State<MiliHomePage> createState() => _MiliHomePageState();
}

class _MiliHomePageState extends State<MiliHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [Text("여기위치는 어디?")],
          ),
        ),
      ),
    );
  }
}
