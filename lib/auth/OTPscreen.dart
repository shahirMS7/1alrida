import 'package:alridafrieds/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OTPScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _otpController = TextEditingController();

  void _submitOtp() {
    if (_formKey.currentState!.validate()) {
      // Perform actions on OTP submission, e.g., validate the OTP and proceed.
      // You can replace the print statement with your actual logic.
      print('OTP submitted: ${_otpController.text}');
    }
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text('Verify your Phone Number',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Enter your OTP code here',style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF898e97)
                  ),),
                  SizedBox(
                    height: 30,

                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: TextFormField(
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(6)
                      ],
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        hintText: '----',
                        contentPadding: EdgeInsets.symmetric(vertical:5 ),
                      ),
                      style: TextStyle(fontSize: 25),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the OTP';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(400, 50),
                        backgroundColor: Colors.green.shade700,
                        side: BorderSide(),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(100, 45),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen(),
                        )
                        );
                      },
                      child: Text('Submit OTP'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
