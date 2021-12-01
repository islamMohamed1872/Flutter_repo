import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:fproject/modules/bmi_result/bmi_result_secreen.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 120;
  String isMale='No Selected Gender';
  int weight = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        elevation: 2,
        title: Text('BMI Calculator',),
      ),
      body: Container(
        color: Colors.black ,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale ='Male';
                          });
                        },
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,
                              color: Colors.white,
                              size: 90.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Male',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),),

                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isMale=='Male' ? Colors.pinkAccent[400] : Colors.white10 ,
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale='Female';
                          });
                        },
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,
                              color: Colors.white,
                              size: 90.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Female',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,

                              ),),

                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isMale=='Female' ? Colors.pinkAccent[400] : Colors.white10,


                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${height.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('CM',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),),


                        ],
                      ),
                      Slider(
                        activeColor: Colors.white,
                        value:height ,
                        max: 220,
                        min: 80,
                        onChanged:(value){
                          setState(() {
                            height = value;
                          });
                        } ,)

                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),),
                            Text('$weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                child: Icon(Icons.remove),
                                backgroundColor: Colors.grey.withOpacity(.5),
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',

                                  mini: true,
                                  child: Icon(Icons.add),
                                  backgroundColor: Colors.grey.withOpacity(.5)
                                  ,),],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),),
                            Text('$age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'Age-',

                                  child: Icon(Icons.remove),
                                  backgroundColor: Colors.grey.withOpacity(.5),
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'Age+',

                                  mini: true,
                                  child: Icon(Icons.add),
                                  backgroundColor: Colors.grey.withOpacity(.5)
                                  ,),],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.pinkAccent[400],
              child: MaterialButton(onPressed: (){
                if(isMale=='No Selected Gender'){
                  Fluttertoast.showToast(msg: "Please Select Your Gender",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  fontSize: 16.0);
                }
                else {
                  var result = weight / pow(height / 100, 2);
                  print(result.round());
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BmiResultScreen(
                            age: age, isMale: isMale, result: result
                              .round(),),),);
                }
              },
                height: 50.0,
              child: Text('Calculate',
              style: TextStyle(
                color: Colors.white,
              ),),),
            ),

          ],
        ),
      ),

    );
  }

}
