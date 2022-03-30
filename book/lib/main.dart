import 'package:flutter/material.dart';
import '../homePage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
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
        title: const Center(
          child: Text(
            'Dao Trong Huan',
            style:
                TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "Explore", icon: Icon(Icons.explore_outlined)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings_outlined))
          ]
      ),
    );
  }
}