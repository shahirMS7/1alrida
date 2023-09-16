
import 'package:alridafrieds/HomeScreen.dart';
import 'package:alridafrieds/auth/LoginSignup.dart';
import 'package:alridafrieds/menu/MenuPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ScreenSplash());
}
class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoSignUporIn();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff60052b),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Image.asset("assets/alridabgn.png",
              width: 100,),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  // Future<void>gotoLogin() async{
  //   await Future.delayed(Duration(seconds: 3));
  //   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>LoginPage()
  //   ),
  //   );
  Future<void>gotoSignUporIn() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>
        SignUporIn()

    ),
    );
  }
}
