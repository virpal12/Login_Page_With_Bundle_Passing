import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui_5/Login.dart';
import 'package:login_ui_5/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController Email = TextEditingController();
  TextEditingController Name = TextEditingController();
  TextEditingController Number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: NetworkImage(
                    'https://media.istockphoto.com/id/1475546151/photo/human-resources-and-resume-concept-resume-profile-for-job-interview-job-search-cv-card-hr.jpg?s=612x612&w=0&k=20&c=0sXnlEBV40_qyfaI1ResuZdo3zgXXkY8_xEpUy1MLfo='),
                height: 300,
                width: 500,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'SIGN UP',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              SizedBox(
                height: 16,
              ),
              Costum.textfield(
                  'E-mail', Icon(Icons.attach_email_rounded), Email),
              Costum.textfield(
                  'Full Name', Icon(Icons.note_add_outlined), Name),
              Costum.textfield(
                  'Number', Icon(Icons.mobile_friendly_sharp), Number),
              SizedBox(
                height: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('By signing up, you are agree to our', style: TextStyle(fontSize: 16, letterSpacing: 1, color: Colors.black),),
// TextButton(
//     onPressed: () {}, child: Text('\nTerms & Conditions')),
// Text('and'),
//
// TextButton(onPressed: () {}, child: Text('Privacy Policy')),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text('Terms & Conditions', style: TextStyle(fontSize: 16),)),
                      Text('and',style: TextStyle(fontSize: 16, letterSpacing: 1, color: Colors.black),),

                      TextButton(onPressed: () {}, child: Text('Privacy Policy',style: TextStyle(fontSize: 16),)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Login(Email: Email.text, Name: Name.text, Number: Number.text)));
                },
                child: Text(
                  'Countinue',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(450, 50),
                    backgroundColor: Colors.blue.shade700),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 98.0),
                child: Row(
                  children: [
                    Text('Joined us before ?'),
                    TextButton(onPressed: () {}, child: Text('Login'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}


