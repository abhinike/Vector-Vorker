import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_flutter/Navigation/screens.dart';
import 'package:first_flutter/Views/Components/Title.dart';
import 'package:first_flutter/Views/Home/SearchSection.dart';
import 'package:first_flutter/Views/Home/WorkerSectionGrid.dart';
import 'package:first_flutter/Views/Main%20Screen/main_screen.dart';
import 'package:first_flutter/Views/Profile%20Screen/profile_screen.dart';
import 'package:first_flutter/Views/chat%20screen/chat_screen.dart';
import 'package:first_flutter/Views/Response.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<HomeScreen> {


  int _currentindex = 0;

  final _screens = <Widget>[
    MainScreen(),
    ProfileScreen(),
    Center(child: Text("Setting"),),
    Center(child: Text("Grid"),),

  ];

  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  //   super.setState(()=> {
  //     selected_item = 1
  //   });
  //
  // }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        actions: const [
          Icon(Icons.bed, size: 30),
          SizedBox(width: 10,),
          Icon(Icons.person, size: 30,),
          SizedBox(width: 20,)
        ],
      ),
      backgroundColor: Colors.white,

      body: IndexedStack(
        index: _currentindex,
        children: _screens,
      ),



      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        color: Colors.blue,

        items: const [
          Icon(Icons.home, color: Colors.white,),
          Icon(Icons.person, color: Colors.white,),
          Icon(Icons.settings, color : Colors.white),
          Icon(Icons.window, color : Colors.white),
        ],
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: CustomTitle( title: 'Vector\nVorker', fontSize: 35,),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Do something
              },
            ),
            ListTile(
              title: Text('Sign out'),
              onTap: () {
                // Do something
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed(Screens.ChatScreen);
        },
        child: Icon(Icons.message),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
