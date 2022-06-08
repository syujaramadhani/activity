import 'package:activity/features/colors.dart';
import 'package:activity/screens/home/open_home/open_home_screen.dart';
import 'package:flutter/material.dart';

class TabsHome extends StatelessWidget {
  const TabsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ActivityColor.blueOld,
          title: const Text('Activities'),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            unselectedLabelStyle: const TextStyle(),
            indicatorWeight: 3.0,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            indicatorColor: Colors.white,
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
            tabs: const [
              Tab(text: 'Open'),
              Tab(text: 'Complete'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OpenHomeScreen(),
            OpenHomeScreen(),
          ],
        ),
      ),
    );
  }
}
