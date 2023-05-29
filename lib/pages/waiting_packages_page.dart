import 'package:flutter/material.dart';
import 'package:kolayca_teslimat_flutter/models/package_model.dart';

class WaitingPackagesPage extends StatefulWidget {
  const WaitingPackagesPage({Key? key}) : super(key: key);

  @override
  State<WaitingPackagesPage> createState() => _WaitingPackagesPageState();
}

class _WaitingPackagesPageState extends State<WaitingPackagesPage> {

  List<Package> packages = [
    Package(id: "3245", typeName: "Standart", status: "Depoda", price: 15, receiver: "Ahmet", sender: "Veli"),
    Package(id: "1266", typeName: "Standart", status: "Depoda", price: 30, receiver: "Mehmet", sender: "Seda"),
    Package(id: "2288", typeName: "Standart", status: "Yolda", price: 20, receiver: "Tülay", sender: "Selçuk"),
    Package(id: "1907", typeName: "Standart", status: "Depoda", price: 15, receiver: "Fahrican", sender: "Ayşe"),
    Package(id: "5531", typeName: "Standart", status: "Depoda", price: 17.35, receiver: "Sedat", sender: "Ali"),
    Package(id: "9810", typeName: "Standart", status: "Depoda", price: 15.00, receiver: "Kemal", sender: "Sude"),
    Package(id: "1023", typeName: "Standart", status: "Depoda", price: 32.5, receiver: "Simge", sender: "Sude"),
    Package(id: "7346", typeName: "Standart", status: "Depoda", price: 50, receiver: "Ahmet", sender: "Veli"),

  ];

  int crossAxis = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bekleyen Paketler"),
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                  crossAxis = crossAxis == 1 ? 2 : 1;
                });
              },
              icon: crossAxis == 1 ? Icon(Icons.list) : Icon(Icons.grid_view),
          ),
        ],
      ),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.near_me),
        onPressed: (){
          
        },
      ),
    );
  }

  Widget buildBody() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: GridView.count(
        crossAxisCount: crossAxis,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: crossAxis > 1 ? 1 : 15 / 9,
        padding: EdgeInsets.all(12),
        children: packages.map((package){
          return buildPack(package);
        }).toList(),
      ),
    );
  }

  Widget buildPack(Package package) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Paket ID : ${package.id}",style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            Text("Tip : ${package.typeName}",style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            Text("Fiyat : ${package.price} TL",style: TextStyle(fontSize: 16),),
          ],
        ),
      ),
    );
  }
}
