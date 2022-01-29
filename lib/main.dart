import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Shahadat Khan'), accountEmail: Text('khanmdshahadat402@gmail'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/pic.jpg'),

              ),
            ),
            ListTile(
              title: Text('Inbox'),
              trailing: Icon(Icons.arrow_forward),

            ),
            ListTile(
              title: Text('Sent'),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),

      ),
    );
  }
}


