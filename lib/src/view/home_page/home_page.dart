import 'package:flutter/material.dart';
import 'package:expensor/src/Data/shared%20pref/shared_pref.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Map<String, String> user = {};

  void getUser() async {
    user =  await UserPref.getUser();
  }

  @override
  void initState() {
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Container(
            margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHdvbWVufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            )
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black, size: 28),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.black,)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: Colors.black,)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_alt, color: Colors.black,)),
        ],
      ),
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
                  style: const TextStyle(color: Color(0xff369FFF), fontSize: 20),
                  children: [
                    TextSpan(
                      text: user["NAME"],
                      style: const TextStyle(
                          color: Color(0xff369FFF), fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ", welcome back!",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
