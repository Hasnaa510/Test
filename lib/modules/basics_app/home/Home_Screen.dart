
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text("First App"),
        actions: [
          IconButton(
            onPressed: onClicked,
            icon: const Icon(Icons.notification_important),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              "Hello";
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.pink,
            ),
            onPressed: () {
              "Good";
            },
          ),
        ],
        elevation: 6,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(30)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,

                  children: [
                    const Image(
                      image:  NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlf8WRWObuaaJAK9u8V_Q6bl0_GmyYixYjVg&usqp=CAU",
                      ),
                      fit:BoxFit.cover ,
                      width: 350,
                      height: 350,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.6),
                      width: 350,
                      padding: const EdgeInsetsDirectional.only(
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Text(
                        'Flower',
                        style: TextStyle(fontSize: 35,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,

                      ),
                    ),
                  ],
                ),
              ),
            ),

        ],
      ),



      /*     SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('First',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Second',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Third',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Fourth',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('First',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Second',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Third',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Fourth',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('First',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Second',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Third',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Fourth',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('First',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Second',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Third',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Fourth',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('First',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Second',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Third',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Fourth',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('First',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Second',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Third',
              style: TextStyle(fontSize: 25.0),
            ),
            Text('Fourth',
              style: TextStyle(fontSize: 25.0),
            ),

          ],
        ),
      ),*/

/*
  Container(
        color: Colors.cyanAccent,
        height: 50.0,
        child: Row(
          children: [
            //  عايزين ندي للتيكست  height هنعمل وراب ويز container
            Expanded(
              child: Container(
                color: Colors.red,
                child: const Text(
                  "FirstText",
                  style: TextStyle(
                      backgroundColor: Colors.red,
                      fontSize:20.0,
                      color: Colors.white
                  )
                  ,
                ),

              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: const Text(
                  "SecondTxt",
                  style: TextStyle(
                      backgroundColor: Colors.green,
                      fontSize: 20.0,
                      color: Colors.white
                  )
                  ,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Text(
                  "ThirdText",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  )
                  ,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                child: const Text(
                  "FourthText",
                  style: TextStyle(
                      fontSize:20.0,
                      color: Colors.white
                  ),
                ),
              ),
            ),

          ],

        ),
      ),
*/

      /*
  Container(
        width: double.infinity,
        color: Colors.purpleAccent,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //  عايزين ندي للتيكست  height هنعمل وراب ويز container
            Container(
              color: Colors.red,
              child: const Text(
                "First Text",
                style: TextStyle(
                    backgroundColor: Colors.red,
                    fontSize: 30.0,
                    color: Colors.white
                )
                ,
              ),

            ),
            Container(
              color: Colors.green,
              child: const Text(
                "Second Text",
                style: TextStyle(
                    backgroundColor: Colors.green,
                    fontSize: 30.0,
                    color: Colors.white
                )
                ,
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Text(
                "Third Text",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white
                )
                ,
              ),
            ),
            Container(
              color: Colors.amber,
              child: const Text(
                "Fourth Text",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white
                ),
              ),
            ),

          ],
        ),
      )
 */
    );
  }

  onClicked() {
    ("Notification Clicked");
  }
}
