import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              //title 
              Column(
                children:const  [
                  Text("Abhishek Sinha"),
                  Text("App Developer"),
                ],
              ),
             //Image 
             CircleAvatar(
              child: Image.asset("assets/signin.png"),
             )
            ],
          )
        ],
      ),
    );
  }
}
