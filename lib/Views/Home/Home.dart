import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_flutter/Views/Components/Title.dart';
import 'package:first_flutter/Views/Home/SearchSection.dart';
import 'package:first_flutter/Views/Home/WorkerSectionGrid.dart';
import 'package:first_flutter/Views/Response.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<HomeScreen> {

  var selected_item = 0;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(()=> {
      selected_item = 1
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      backgroundColor: Colors.white,

      body: Container(
        child: ListView(
          children: [
            SearchScreen(),
           WorkSectionGrid(),
            // Repsonse2(),
          ],
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blue,

        items: const [
          Icon(Icons.home, color: Colors.white,),
          Icon(Icons.person, color: Colors.white,),
          Icon(Icons.settings, color : Colors.white),
        ],
        onTap: (index){
          print(index);
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
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.call),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
