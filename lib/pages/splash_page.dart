import 'package:flutter/material.dart';
import 'package:kolayca_teslimat_flutter/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:Padding(
        padding: EdgeInsets.only(top: 100,bottom: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.delivery_dining,color: Colors.brown,size: 60,),
                        Text("Kolayca Teslimat",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),)
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(8),
                            child: CircularProgressIndicator()),
                        Text("Online store\n for everone",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),)
                      ],
                    ),
                  ],
                ),

              ],
            ),
        ),
      ),

    );
  }
}
