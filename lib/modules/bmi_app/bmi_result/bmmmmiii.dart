import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi/bmmmmmi-result.dart';

class VMI extends StatefulWidget {
  const VMI({Key? key}) : super(key: key);

  @override
  State<VMI> createState() => _VMIState();
}

class _VMIState extends State<VMI> {


    bool isMale = true;
    double height = 120;
    int age = 20;
    int weight = 40;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale =true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMale ? Colors.blue : Colors.grey[300] ,
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: const[
                            Image(
                                image: AssetImage(
                                  'assets/images/male.png',
                                ),
                              width: 90,
                              height: 90,
                            ),
                            Text('MALE',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false ;
                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: isMale ? Colors.grey[300] : Colors.blue ,
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Image(
                              image: AssetImage(
                                'assets/images/female.png',
                              ),
                              width: 90,
                              height: 90,
                            ),
                            Text('FEMALE',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic ,
                      children: [
                        Text('${height.round()}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                        ),
                        ),
                        const Text('CM',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                      ],
                    ),
                    Slider(
                        min: 80,
                        max: 220,
                        value: height,
                        onChanged: (value){
                          setState(() {
                              height= value;
                          });

                        })
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
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           Text('$age',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 50,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed:() {
                                    setState(() {
                                      age --;
                                    });
                                  },
                              child:const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed:() {
                                  setState(() {
                                    age ++;
                                  });
                                },
                                child:const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           Text('$weight',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 50,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:() {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child:const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed:() {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child:const Icon(Icons.add),
                              ),
                            ],
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
            color: Colors.blue,
            child: MaterialButton(
                onPressed: (){
                double result= weight /pow(height/100 ,2);

                  Navigator.push(
                      context,
                    MaterialPageRoute(
                      builder: (context) =>   BMIII_Result(
                        isMale : isMale,
                        result: result.round(),
                        age: age,

                ),
                    ),
                  );
                },
              child: const Text('CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
