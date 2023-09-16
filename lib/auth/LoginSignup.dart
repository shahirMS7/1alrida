
import 'package:alridafrieds/auth/Login.dart';
import 'package:alridafrieds/auth/Signup.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(SignUporIn());
}

class SignUporIn extends StatelessWidget {
  const SignUporIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/friedBucket.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 600),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: 58,
                    width: 250,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black, //background color of button
                            side: BorderSide(), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(10) //content padding inside button
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return SignUp();
                          }));
                        }, child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 15),)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 58,
                    width: 250,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, //background color of button
                            side: BorderSide(), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(10) //content padding inside button
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return SignInTest();
                          }));
                        }, child: Text('Sign In',style: TextStyle(color: Colors.black,fontSize: 15),)),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
