import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'bucket_service.dart';
import 'pages/mili_daily_page.dart';
import 'pages/mili_home_page.dart';
import 'pages/mili_weekly_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => BucketService()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mili(),
    ),
  ));
}

Color miliPrimaryColor = Color.fromARGB(255, 75, 168, 245);

class Mili extends StatefulWidget {
  const Mili({Key? key}) : super(key: key);

  @override
  State<Mili> createState() => _MiliState();
}

class _MiliState extends State<Mili> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mili Mili")),
      ),
      body: IndexedStack(
        index: currentIndex, // index 순서에 해당하는 child를 맨 위에 보여줌
        children: [
          MiliHomePage(),
          MiliWeeklyPage(),
          MiliDailyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // 현재 보여주는 탭
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          // 다른 페이지로 이동
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: miliPrimaryColor, // 선택된 아이콘 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이콘 색상
        showSelectedLabels: false, // 선택된 항목 label 숨기기
        showUnselectedLabels: false, // 선택되지 않은 항목 label 숨기기
        type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.check_box), label: ""),
        ],
      ),
    );
  }
}
