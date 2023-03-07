import 'package:first_flutter/Util/Constants.dart';
import 'package:first_flutter/Views/Home/Home.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';
import 'package:first_flutter/Util/Constants.dart';

class GoogleSignInScreen extends StatelessWidget {
  const GoogleSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          height: 160,
        ),
        const Image(
          image: AssetImage(signinpng),
        ),
        // const SizedBox(
        //   height: 40,
        // ),
        Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(22, 40, 0, 40),
            child: const Text(
              "Vector \nVorkers",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
        Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(22, 0, 0, 40),
            child: const Text(
              "Connect with Highly Skilled Local Workers Quickly.\nEffortlessly Find Reliable Workers in Your Area",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
        Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.all(16),
          child:ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,



              children: [
                Image.asset(
                    googleicon,
                  height: 30,
                ),
                SizedBox(width: 20,),
                Text(
              'Sign IN with Google',
              style: TextStyle(fontSize: 22),
            ),]
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Set the desired radius here
              ),
            ),
          ) ,
        ),

      ],
    ));
  }
}
