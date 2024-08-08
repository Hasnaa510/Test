// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: const Text(
          'Messages',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:  [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius:30.0 ,
                  backgroundImage:  NetworkImage(
                    'https://i.pinimg.com/736x/f2/8a/63/f28a63095ea98f8e29e0c94c9204e0a5.jpg',
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children:const [
                          Text(
                            'Laurent',
                            style: TextStyle(fontSize: 20),
                          ),
                           SizedBox(width: 15,),
                          Text(
                            '20:18',
                          ),
                        ],
                      ),
                      const Text(
                        'How about meeting tomorrow?',
                        style: TextStyle(color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,),

              ],
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.grey,
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius:30.0 ,
                  backgroundImage:  NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkwWZE7s7Xh8s-WG02TRzRQwABno6w8uDv6Q&usqp=CAU',
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children:const [
                          Text(
                            'Tracy',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '19:22',
                          ),
                        ],
                      ),
                      const Text(
                        'I love that idea, it\'s great!',
                        style: TextStyle(color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,),

              ],
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.grey,
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius:30.0 ,
                  backgroundImage:  NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqEAxgW10WFySXhZInayGqbY90Tb6uzoKkY1MCbX-1&s',
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children:const [
                          Text(
                            'Joe',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '11:05',
                          ),
                        ],
                      ),
                      const Text(
                        'Flutter just release 1.0 officially. \n Should i go for it?',
                        style: TextStyle(color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,),

              ],
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.grey,
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius:30.0 ,
                  backgroundImage:  NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAopXuJE0PiDAp7jAvscQQCB2Z262Sm_dIVA&usqp=CAU',
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children:const [
                          Text(
                            'Claire',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '14:34',
                          ),
                        ],
                      ),
                      const Text(
                        'I wasn\'t aware of that. Let me check',
                        style: TextStyle(color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,),

              ],
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.grey,
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius:30.0 ,
                  backgroundImage:  NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmDw3JvhWwAoWiBOuRq_NWdp-hi3__8ttiuFhka3qq&s',
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children:const [
                          Text(
                            'Mark',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '09:46',
                          ),
                        ],
                      ),
                      const Text(
                        'It totally makes sense to get some extra day-off',
                        style: TextStyle(color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,),

              ],
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.grey,
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius:30.0 ,
                  backgroundImage:  NetworkImage(
                    'https://i.ytimg.com/vi/LFzniyt5i7Q/sddefault.jpg',
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(
                        children:const [
                          Text(
                            'Williams',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '08:15',
                          ),
                        ],
                      ),
                      const Text(
                        'It has been re-scheduled to next saturday at 7:00 pm',
                        style: TextStyle(color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
