import 'package:flutter/material.dart';
import 'package:http/http.dart';


class Repsonse2 extends StatefulWidget {
  const Repsonse2({Key? key}) : super(key: key);


  @override
  State<Repsonse2> createState() => _Repsonse2State();
}

class _Repsonse2State extends State<Repsonse2> {

  // https://opentdb.com/api.php?amount=10
   late Response response ;

  var url =
  Uri.https('www.opentdb.com', '/api.php?amount=10', {'q': '{http}'});

  getData() async{
    response = await get(url);
    print(response.body);



  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text((response.body.toString())),
        ElevatedButton(onPressed: (){
          getData();
        }, child: Text("Click here"))
      ],
    );
  }
}


