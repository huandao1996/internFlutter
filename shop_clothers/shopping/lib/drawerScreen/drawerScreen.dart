import 'package:flutter/material.dart';
import 'avatarDrawer.dart';
import 'category.dart';

class drawerScreen extends StatelessWidget {
  const drawerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const avatarDrawer(),
          //#####################
          const SizedBox(height: 30),
          //#####################
          SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              Column(
                children: [
                  Text('09', style: TextStyle(fontSize: 20, color: Colors.orange), ),
                  Text('My Order'),
                ],
              ),
              const Spacer(flex: 1),
              Column(
                children: [
                  Text('07',style: TextStyle(fontSize: 20,color: Colors.orange),),
                  Text('Whistlist'),
                ],
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
          //#####################
          const SizedBox(height: 30),
          //#####################
          const Categories(),
          //#####################
          const SizedBox(height: 30),
          //#####################
          Container(
          padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //(urlIcon: "assets/images/icons/user.png", text: "Account"),
          //AccountText(urlIcon: "assets/images/icons/settings.png", text: "Settings"),
          Row(
            children: [
              Image.asset(
                "assets/images/icons/user.png",
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 10),
              Text("Account"),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                "assets/images/icons/settings.png",
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 10),
              Text("Settings"),
            ],
          ),
        ],
      ),
          ),
      ],
      ),
    );
  }
}