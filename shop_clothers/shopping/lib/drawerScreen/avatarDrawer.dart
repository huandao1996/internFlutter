import 'package:flutter/material.dart';


class avatarDrawer extends StatelessWidget {
  const avatarDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
            image: AssetImage('assets/images/avatar.jpg'),
            fit: BoxFit.cover,
                ),
            boxShadow: const [BoxShadow(blurRadius: 5,)],
              ),              
            ),
          const SizedBox(height: 20),
          Text(
              'Đào Trọng Huân',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
    );
  }
}