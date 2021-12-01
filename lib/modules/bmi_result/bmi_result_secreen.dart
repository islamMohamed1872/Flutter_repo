import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  var result;
  int age;
  String isMale;
  BmiResultScreen({
    required this.age,
    required this.result,
    required this.isMale
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        elevation: 2,
        title: Text('BMI Result'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender : $isMale',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              Text('Result : $result',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              Text('Age : $age',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),

            ],
          ),
        ),
      ),
    );
  }
}
