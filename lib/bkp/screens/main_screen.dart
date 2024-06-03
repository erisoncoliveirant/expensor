import 'package:expensor/bkp/screens/components/side_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant.dart';
import '../widgets/activity_header.dart';
import '../widgets/bar_chart.dart';
import '../widgets/courses_grid.dart';
import '../widgets/planing_grid.dart';
import '../widgets/planing_header.dart';
import '../widgets/statistics_grid.dart';
import 'components/chart_container.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final _auth = FirebaseAuth.instance.currentUser!;

  void signOut() {
    FirebaseAuth.instance.signOut();
    Navigator.pushNamed(context, "/login");
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black, size: 28),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.black,)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: Colors.black,)),
          IconButton(onPressed: signOut, icon: const Icon(Icons.exit_to_app, color: Colors.black,)),
          Container(
              margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHdvbWVufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              )
          )
        ],
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  text: "Hello ",
                  style: const TextStyle(color: kDarkBlue, fontSize: 20),
                  children: [
                    TextSpan(
                      text: _auth.displayName,
                      style: const TextStyle(
                          color: kDarkBlue, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ", welcome back!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Courses",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: kDarkBlue),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CourseGrid(),
              const SizedBox(
                height: 20,
              ),
              const PlaningHeader(),
              const SizedBox(
                height: 15,
              ),
              const PlaningGrid(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Statistics",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const StatisticsGrid(),
              const SizedBox(
                height: 15,
              ),
              const ActivityHeader(),
              const ChartContainer(chart: BarChartContent())
            ],
          ),
        ),
      ),
    );
  }
}
