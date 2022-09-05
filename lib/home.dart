import 'package:flutter/material.dart';
import 'package:flutter_week17/contect.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leena App"),
      ),
      body: const Center(child: Text("ระวังตัวไว้ให้ดี")),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("LEENA"),
              accountEmail: Text("Leena@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                //debugpPint();
                Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
             ListTile(
              leading: const Icon(Icons.contact_page,color: Colors.yellow,),
              title: const Text("Contact"),
              onTap: () {
                //debugpPint();
                Navigator.push(context,MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Hello");
        },
        child: const Icon(Icons.add_business),
      ),
    );
  }
}
