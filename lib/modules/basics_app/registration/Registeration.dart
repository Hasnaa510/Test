
// ignore_for_file: file_names

import 'package:flutter/material.dart';
class Registeration extends StatelessWidget {
  const Registeration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios ) ,
        title: const Text(
          'Registeration Page',
        ),
      ),
      body:
      Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children:[
                TextFormField(
                      decoration: const InputDecoration(
                        hintText:"userName" ,
                        prefixIcon: Icon(Icons.email_rounded,
                          color: Colors.blue,
                        ) ,


                      ),
                    ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText:"Password" ,
                    prefixIcon: Icon(Icons.lock,
                      color: Colors.blue,
                    ) ,


                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText:"Email" ,
                    prefixIcon: Icon(Icons.email_rounded,
                      color: Colors.blue,
                    ) ,


                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText:"Birth Date" ,
                    prefixIcon: Icon(Icons.date_range,
                      color: Colors.blue,
                    ) ,


                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText:"Address" ,
                    prefixIcon: Icon(Icons.home,
                      color: Colors.blue,
                    ) ,


                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                  style: ButtonStyle(
                    shape:MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )) ,
                  ),
                    onPressed: (){},
                    child:const Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}



