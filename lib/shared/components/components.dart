
import 'package:flutter/material.dart';

Widget defaultButton({
  color:Colors.blue,
  width : double.infinity,
  bool isUpperCase=true,
  required VoidCallback function,
  required String text,})=> Container(
  color: color,
  width: width,
  child:   MaterialButton(
  onPressed: function,
  child: Text(
  isUpperCase? text.toUpperCase():text,
  style: TextStyle(
  color: Colors.white,
  ),
  ),
  ),
);


Widget defaultField({
  VoidCallback? suffixPressed,
  bool visable=false,
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required  FormFieldValidator<String> validate,
  IconData? suffix,
  required IconData prefix,})=> TextFormField(
controller: controller,
keyboardType: type,
obscureText: visable,
decoration: InputDecoration(
  suffixIcon: IconButton(
      onPressed: suffixPressed,
      icon: Icon(suffix)),
labelText: label,
prefixIcon: Icon(
prefix,
),
border: OutlineInputBorder(),
),
validator: validate,
);