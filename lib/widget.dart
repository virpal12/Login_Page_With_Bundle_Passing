

import 'package:flutter/material.dart';

class Costum {
  static textfield (String hinttext,Widget? prefixIcon,TextEditingController? controller){
    return     TextField(
      controller:controller ,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hinttext

        ),



    );
  }
}