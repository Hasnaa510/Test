import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_a_photo_rounded,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.grey[350],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        size: 25,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemBuilder: (context, index) => buildStoryItem(),
                  itemCount: 15,

                ),
              ),
              ListView.separated(
                physics:const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder:  (context, index) => buildChatItem(),
                separatorBuilder:  (context, index) => const SizedBox(height: 20),
                itemCount: 15,
              ),
//__________________________________________________________________________________
/*
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 64,
                      child: Column(
                        children:  [
                            Stack(
                               alignment: AlignmentDirectional.bottomEnd,
                               children: const [
                                  CircleAvatar(
                                  radius:30.0 ,
                                  backgroundImage:  NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                  ),
                                 ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      bottom:3,
                                      end: 3 ,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 7,
                                    ),
                                  ),
                               ],
                             ),
                          const Text(
                            'Hasna Hamed Mohamed',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),


                        ],
                      ),
                    ),
                     Container(
                      width: 10,
                    ),
                    SizedBox(
                      width: 64,
                      child: Column(
                        children:  [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom:3,
                                  end: 3 ,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Hasna Hamed Mohamed',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),


                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 64,
                      child: Column(
                        children:  [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom:3,
                                  end: 3 ,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Hasna Hamed Mohamed',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 64,
                      child: Column(
                        children:  [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom:3,
                                  end: 3 ,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Hasna Hamed Mohamed',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),


                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 64,
                      child: Column(
                        children:  [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom:3,
                                  end: 3 ,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Hasna Hamed Mohamed',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),


                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 64,
                      child: Column(
                        children:  [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom:3,
                                  end: 3 ,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Hasna Hamed Mohamed',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
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
                        height: 25,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                   style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.bold,
                                   ),
                                   overflow: TextOverflow.ellipsis,
                                   maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                     Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:  NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 7,
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
                                const Text(
                                  'Fatma al-zahraa Hamed Mohamed',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:1 ,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'hello my name is fatma al-zahraa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child:CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 6,
                                      ),
                                    ),
                                    Text(
                                      '02:14',
                                    ),

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
//________________________________________________________________

            ],
          ),
        ),
      ),
    );
  }
}


Widget buildChatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 7,
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
              const Text(
                'Fatma al-zahraa Hamed Mohamed',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: const [
                  Text(
                    'hello my name is fatma al-zahraa',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 6,
                    ),
                  ),
                  Text(
                    '02:14',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
Widget buildStoryItem() => SizedBox(
      width: 64,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEmu-Rv8Ne2-aeXW170cVGbKBte_wKln88g&usqp=CAU',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 7,
                ),
              ),
            ],
          ),
          const Text(
            'Hasna Hamed Mohamed',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
