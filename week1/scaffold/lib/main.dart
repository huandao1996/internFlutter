import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp())
  );
}
class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Đào Trọng Huân'),
        leading: Builder(builder: (context) => IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
        )
       ),
       actions: [Builder(builder: (context) => IconButton(
          icon: Icon(Icons.face),
          onPressed: (){
            Scaffold.of(context).openEndDrawer();
          },
        )
       )],
      ),
      drawer: Drawer(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        },
        child: Text('OK')),
      ),
      endDrawer: Drawer(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        },
        child: Text('OK')),
      ),
      body: Container(child: Center(child: Text('WEEK 1'))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.share),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50,
        ),
      ),
    );

  }
}