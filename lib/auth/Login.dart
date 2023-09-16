import 'package:alridafrieds/auth/OTPscreen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


void main() {
  runApp(SignInTest());
}

class SignInTest extends StatelessWidget {
  SignInTest({super.key});
  final _nameController=TextEditingController();
  final _mobNumber=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "To complete your orders,see prices and exclusive deals,you'll need to Login or Signup here",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your name',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone number',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IntlPhoneField(
                controller: _mobNumber,
                decoration: InputDecoration(
                  //decoration for Input Field
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN', //default contry code, NP for Nepal
                onChanged: (phone) {
                  //when phone number country code is changed
                  print(phone.completeNumber); //get complete number
                  print(phone.countryCode); // get country code only
                  print(phone.number); // only phone number
                },
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    Colors.green.shade700, //background color of button
                    side: BorderSide(), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      //to set border radius to button
                    ), //content padding inside button
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => OTPScreen()),
                    );
                  },
                  child: Text(
                    'Login with OTP',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
