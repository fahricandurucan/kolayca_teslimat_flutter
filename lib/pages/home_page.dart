import 'package:flutter/material.dart';
import 'package:kolayca_teslimat_flutter/pages/login_page.dart';
import 'package:kolayca_teslimat_flutter/pages/waiting_packages_page.dart';

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
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/128/383/383980.png"),

                  ),
                  SizedBox(height: 15,),
                  Text("Kolayca Teslimat",style: TextStyle(fontSize: 21),),
                ],
              ),
            decoration: BoxDecoration(
              color: Colors.brown,
            ),
          ),
          ListTile(
            title: Text("Rota Haritası"),
            leading: Icon(Icons.location_on),
            onTap: (){
              Navigator.pop(context);
            }
          ),
          Divider(
            thickness: 2,
            height: 2,
          ),
          ListTile(
              title: Text("Bekleyen Paketler"),
              leading: Icon(Icons.takeout_dining),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => WaitingPackagesPage()));
              }
          ),
          Divider(
            thickness: 2,
            height: 2,
          ),
          ListTile(
              title: Text("Çıkış Yap"),
              leading: Icon(Icons.close),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
              }
          ),
        ],
      ),
    );
  }
}
