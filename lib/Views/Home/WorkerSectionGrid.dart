import 'package:first_flutter/Util/Constants.dart';
import 'package:first_flutter/Views/Components/Title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkSectionGrid extends StatelessWidget {
  const WorkSectionGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
       height: 400,
      margin: EdgeInsets.all(16),

      child: GridView.count(
        crossAxisCount: 2,
        children: [
          //elctrician
          Container(

            child: Center(child: MyCard(imagePath: electrician,title: "Electrician", )),
          ),
          Container(

            child: Center(child: MyCard(imagePath: painter,title: "Painter", )),
          ),
          Container(

            child: Center(child: MyCard(imagePath: carpenter,title: "Carpenter", )),
          ),
          Container(

            child: Center(child: MyCard(imagePath: plumber,title: "Plumber", )),
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final double borderRadius;

  MyCard({required this.imagePath, this.borderRadius = 12.0, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        child:Column(

          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.fitWidth,
              height: 140,
            ),
            Center(
              child: Text(this.title, style: TextStyle(fontSize: 16),),
            )
          ],
        ) ,
      )
    );
  }
}


