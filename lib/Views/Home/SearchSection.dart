import 'package:first_flutter/Views/Components/Title.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          CustomTitle(title: "Find Your", fontSize: 36, fontWeight: FontWeight.normal,),
          CustomTitle(title: "Best Work", fontSize: 36),
      Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey[200],
        ),
        child: Align(
          alignment: Alignment.center,
          child: TextField(
            decoration: InputDecoration(

              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, size: 30,),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
        )
      )




      ],
      ),
    );
  }
}
