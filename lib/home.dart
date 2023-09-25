import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/view/screens/health.dart';
import 'package:newsapp/view/screens/news.dart';
import 'package:newsapp/view/screens/sport.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'News '),
              Tab(text: 'Health ',),
              Tab(text: 'Sports ',),
              ],
          ),
          
        ),
        body: const TabBarView(
          children: [news(), food(), sport()],
        ),
      ),
    );
  }
}
