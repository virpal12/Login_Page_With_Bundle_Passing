import 'package:flutter/material.dart';

class Third extends StatelessWidget {

 String Name;
 String Email;
 String Number;
 String Password;
  Third({
     required this.Name,
     required this.Email,
     required this.Number,
     required this.Password,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Imformation' , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
            SizedBox(height: 40,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 450,
                  width: 400,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.pink.shade100
                 ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 48),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Name : ${Name}' , style: TextStyle(color: Colors.blue.shade700, fontSize:23 , fontWeight: FontWeight.bold),),
                        Text('G-mail : ${Email}' , style: TextStyle(color: Colors.blue.shade700, fontSize:21, fontWeight: FontWeight.bold),),
                        Text('Number : ${Number}' , style: TextStyle(color: Colors.blue.shade700, fontSize:23 , fontWeight: FontWeight.bold),),
                        Text('Password : ${Password}' , style: TextStyle(color: Colors.blue.shade700, fontSize:23 , fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
