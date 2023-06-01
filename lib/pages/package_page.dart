import 'package:flutter/material.dart';
import 'package:kolayca_teslimat_flutter/models/package_model.dart';

class PackagePage extends StatefulWidget {

  Package package;

  PackagePage({required this.package});


  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ID: ${widget.package.id}"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${widget.package.price} ₺",style: TextStyle(fontSize: 18),),
              ],
            ),
          ),
        ],
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        SizedBox(height: 30,),
        Text("Paket Detayı",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        SizedBox(height: 80,),
        Padding(
          padding: const EdgeInsets.only(left: 18,right: 18),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Paket Durumu",style: TextStyle(fontSize: 18),),
                      Text("${widget.package.status}",style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gönderen",style: TextStyle(fontSize: 18),),
                      Text("${widget.package.sender}",style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gönderen Adresi",style: TextStyle(fontSize: 18),),
                      Text("${widget.package.senderAddress}",style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alıcı",style: TextStyle(fontSize: 18)),
                      Text("${widget.package.receiver}",style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alıcı Adresi",style: TextStyle(fontSize: 18),),
                      Text("${widget.package.receiverAddress}",style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ]
              ),
          ),
        ),
      ],
    );
  }
}
