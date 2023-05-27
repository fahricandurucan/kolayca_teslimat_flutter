import 'package:flutter/material.dart';

class WaitingPackagesPage extends StatefulWidget {
  const WaitingPackagesPage({Key? key}) : super(key: key);

  @override
  State<WaitingPackagesPage> createState() => _WaitingPackagesPageState();
}

class _WaitingPackagesPageState extends State<WaitingPackagesPage> {

  List<int> packages = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bekleyen Paketler"),
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
      child: SingleChildScrollView(
        child: Column(
          children: packages.map((element) {
            return buildPack(element);
          }).toList(),
          // children: [
          //   buildPack(),
          //   buildPack(),
          //   buildPack(),
          //   buildPack(),
          //   buildPack(),
          //
          // ],
        ),
      ),
    );
  }

  Widget buildPack(int element) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Standart Paket"),
              Text("15 TL"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Gönderici"),
              Text("Alıcı"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Fahrican"),
              Text("Simge"),
            ],
          ),
        ],
      ),
    );
  }
}
