import 'package:flutter/material.dart';
import 'package:shopping/homeScreen/homeBanner.dart';
import '../homeScreen/homeScreen.dart';
import 'drawerScreen/drawerScreen.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Home'),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
        leading: Builder(builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        ),
      ),
      drawer: drawerScreen(),
      body: HomeScreeen(),

      
    );
  }
}