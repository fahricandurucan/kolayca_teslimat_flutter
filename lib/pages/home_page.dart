import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kolayca Teslimat"),
      ),
      drawer: buildDrawer(),

      body: Container(),
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Text("Kolayca Teslimat"),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            title: Text("Rota Haritası"),
            onTap: (){
              Navigator.pop(context);
            }
          ),
          ListTile(
              title: Text("Bekleyen Paketler"),
              onTap: (){
                Navigator.pop(context);
              }
          ),
          ListTile(
              title: Text("Çıkış Yap"),
              onTap: (){
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}
