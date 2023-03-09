import 'package:first_flutter/Views/GoogleSignIn.dart';
import 'package:first_flutter/Views/Home/Home.dart';
import 'package:first_flutter/Views/Profile%20Screen/profile_screen.dart';
import 'package:first_flutter/Views/chat%20screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter/main.dart';



class RouteGenerator{

  static Route<dynamic> generateRoute(RouteSettings settings){

    // get argument while calling named route
    final arg = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (BuildContext context)=> MyHomePage(title: "Vector Vorkers"));
      case '/second':
        return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
      case '/chat':
        return MaterialPageRoute(builder: (BuildContext context) => ChatScreen());
      case '/profile':
        return MaterialPageRoute(builder: (BuildContext context) => ProfileScreen());  

      default :
        return MaterialPageRoute(builder: (BuildContext context) => ErrorPage());
    }


  }

}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Error page "),
      ),
    );
  }
}

