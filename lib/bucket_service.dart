import 'package:flutter/material.dart';
import 'pages/mili_daily_page.dart';

/// Bucket 담당
class BucketService extends ChangeNotifier {
  List<Bucket> bucketList = [
    Bucket('잠자기', false), // 더미(dummy) 데이터
  ];
}
