import 'package:flutter/material.dart';
import 'package:kolayca_teslimat_flutter/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController phoneNumberController = TextEditingController();

  bool loginIsStarted = false;

  void attemptLogin(){
    if(phoneNumberController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text("Lütfen tel no giriniz")));
    }
    else if(phoneNumberController.text != "123456"){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text("Geçersiz telefon numarası")));
    }
    else{
      startFakeRequest();
    }
  }

  void startFakeRequest(){
    setState(() {
      loginIsStarted = true;
    });
    Future.delayed(Duration(seconds: 2),(){
      setState(() {
        loginIsStarted = false;
      });
    });

    if(phoneNumberController.text =="123456"){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text("Bilgileriniz yanlıştır.")));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(
            //     padding: EdgeInsets.only(bottom: 20),
            //   child:Text("WELCOME..!",style:
            //   TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            // ),
            Padding(padding: EdgeInsets.all(12),child: Image.asset("assets/z.png"),),
            buildPhoneNumber(),
            buildLoginButton(),
          ],
        ),
      ),
    );
  }

  Widget buildPhoneNumber() {
    return  Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: TextField(
        controller: phoneNumberController,
        decoration: InputDecoration(
          hintText: "Phone Number",
          icon: Icon(Icons.person),
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20,right: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: loginIsStarted ?  CircularProgressIndicator() : SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: (){
            attemptLogin();
          },
          child: Text("Giriş"),
        ),
      ),
    );
  }
}
