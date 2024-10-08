// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class BMIII_Result extends StatelessWidget {

  final bool isMale;
  final int result;
  final int age;

  const BMIII_Result({super.key,
  required this.isMale,
  required this.result,
  required this.age});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('BMIII_Result'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender :${isMale ? ' Male' : 'Female'}  ',
              style:const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Result :$result',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text('Age :$age',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
