import 'package:flutter/material.dart';

class Mess_Screen extends StatelessWidget {
  const Mess_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children:const [
             CircleAvatar(
              radius:20,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text('Chats',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
          ],
        ),
        actions: [
          IconButton(
            icon:const CircleAvatar(
              child: Icon(Icons.edit),
            ),
            onPressed:(){} ,
          ),
          IconButton(
            icon:const CircleAvatar(
              child: Icon(
                Icons.camera_alt,
                size: 20),
            ),
            onPressed:(){} ,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0) ,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(30),
                  color: Colors.grey[300],

                ),
                padding: const EdgeInsetsDirectional.all(10),
                width: double.infinity,
                child: Row(
                  children: const[
                    Icon(Icons.search),
                    Text('searsh',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) => BuildStoryItem(),
                    separatorBuilder:(context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemCount: 8),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder:(context, index) => BuildChatItem(),
                  separatorBuilder:(context, index) =>const SizedBox(height: 20,) ,
                  itemCount: 15,
              )

              /*
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const Text('Hasnaa Hamed Mohamed Ahmed',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],

                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const Text('Hasnaa Hamed Mohamed Ahmed',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],

                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const Text('Hasnaa Hamed Mohamed Ahmed',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],

                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const Text('Hasnaa Hamed Mohamed Ahmed',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],

                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            CircleAvatar(
                              radius:35,
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 9,

                            ),
                          ],
                        ),
                        const Text('Hasnaa Hamed Mohamed Ahmed',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        ],

                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: const[
                          CircleAvatar(
                            radius:35,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                            ),
                          ),
                          Text('Hasnaa Hamed Mohamed Ahmed',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],

                      ),
                    ),
                  ],

                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Hasnaa Hamed Mohamed Ahmed Mohamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Row(
                                  children: [
                                    const  Expanded(
                                      child:
                                      Text('hello ,pleased to meet you can you study hard',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(

                                        width: 10,
                                        height:10 ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const Text('02:00 pm'),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Hasnaa Hamed Mohamed Ahmed Mohamed Mohamed',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Row(
                                  children: [
                                    const  Expanded(
                                      child:
                                      Text('hello ,pleased to meet you can you study hard',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(

                                        width: 10,
                                        height:10 ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const Text('02:00 pm'),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Hasnaa Hamed Mohamed Ahmed Mohamed Mohamed',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Row(
                                  children: [
                                    const  Expanded(
                                      child:
                                      Text('hello ,pleased to meet you can you study hard',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(

                                        width: 10,
                                        height:10 ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const Text('02:00 pm'),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Hasnaa Hamed Mohamed Ahmed Mohamed Mohamed',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Row(
                                  children: [
                                    const  Expanded(
                                      child:
                                      Text('hello ,pleased to meet you can you study hard',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(

                                        width: 10,
                                        height:10 ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const Text('02:00 pm'),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Hasnaa Hamed Mohamed Ahmed Mohamed Mohamed',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Row(
                                  children: [
                                    const  Expanded(
                                      child:
                                      Text('hello ,pleased to meet you can you study hard',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(

                                        width: 10,
                                        height:10 ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const Text('02:00 pm'),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 9,

                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Hasnaa Hamed Mohamed Ahmed Mohamed Mohamed',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Row(
                                  children: [
                                    const  Expanded(
                                      child:
                                      Text('hello ,pleased to meet you can you study hard',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(

                                        width: 10,
                                        height:10 ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const Text('02:00 pm'),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
*/

            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

Widget BuildStoryItem()=>Container(
  width: 70,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius:35,
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 9,

          ),
        ],
      ),
      const Text('Hasnaa Hamed Mohamed Ahmed',
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ],

  ),);

Widget BuildChatItem()=> Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: const [
        CircleAvatar(
          radius:35,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/474x/41/71/84/417184cdf92ecec48c5dcee801b508cd.jpg'
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 9,

        ),
      ],
    ),
    const SizedBox(
      width: 10,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Hasnaa Hamed Mohamed Ahmed Mohamed Mohamed',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Row(
            children: [
              const  Expanded(
                child:
                Text('hello ,pleased to meet you can you study hard',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(

                  width: 10,
                  height:10 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                ),
              ),
              const Text('02:00 pm'),
            ],
          ),

        ],
      ),
    ),

  ],
);