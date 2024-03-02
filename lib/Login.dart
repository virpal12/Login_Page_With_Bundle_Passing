import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:login_ui_5/Third.dart';
import 'package:login_ui_5/widget.dart';

class Login extends StatefulWidget {
 String Email;
  String Name;
  String Number;

   Login({required this.Email,
  required this.Name,
  required this.Number});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: NetworkImage(
                    'https://media.istockphoto.com/id/1319619336/photo/3d-illustration-cartoon-character-hand-sticking-out-the-smart-phone-screen-throws-up-golden.jpg?s=612x612&w=0&k=20&c=jNhAQh56Umz_i_Icwa4024knlu5Ov-gGShVVOfHkFHA='),
                fit: BoxFit.fitHeight,
                height: 230,
                width: 600,
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 248.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Costum.textfield('E-MAIL ID', Icon(Icons.email), Email),
              SizedBox(
                height: 5,
              ),
              Costum.textfield('Password', Icon(Icons.lock), Password),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 198.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(fontSize: 16),
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Third(Name: widget.Name, Email: Email.text, Number: widget.Number, Password: Password.text)));
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 50),
                    backgroundColor: Colors.blue.shade700),
              ),
              SizedBox(
                height: 20,
              ),
              Text('OR'),
              SizedBox(
                height: 20,
              ),

              Container(height: 45, width: 300,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.grey.shade200,

),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 38.0),
                       child: Image(image: NetworkImage('https://cdn.iconscout.com/icon/free/png-512/free-google-160-189824.png?f=webp&w=256'),
                       height: 35,
                       fit: BoxFit.cover,
                       ),
                     ),
                     
                     Padding(
                       padding: const EdgeInsets.only(right: 38.0),
                       child: Text('Login with Google', style: TextStyle(fontSize: 18,  fontWeight: FontWeight.bold),),
                     )
                   ],
                 ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
