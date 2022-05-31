import 'package:flutter/material.dart';
import './home.dart' as home;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('My Home'),
            bottom: TabBar(
              indicatorWeight: 15,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.purple,
              ),
              tabs: [
                Text('All'),
                Text('Kitchen'),
                Text('living room'),
              ],
            ),
          ),
          body: SafeArea(
            child: TabBarView(
              children: [
                home.homepage(),
                home.kitchen(),
                home.living_room(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
