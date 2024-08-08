// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';


class UserModel {
  late final int id;
  late final String name;
  late final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}
 List<UserModel> users=
   [
          UserModel(
            id: 1,
            name: 'Hasnaa Hamed Mohamed',
            phone: '+207346846463',
          ),
          UserModel(
            id: 2,
            name: 'BaBa Hamed Mohamed',
            phone: '+20754752985',
          ),
          UserModel(
            id: 3,
            name: 'Ahmed Hamed Mohamed',
            phone: '+20734682435',
          ),
          UserModel(
       id: 1,
       name: 'Hasnaa Hamed Mohamed',
       phone: '+207346846463',
     ),
          UserModel(
       id: 2,
       name: 'BaBa Hamed Mohamed',
       phone: '+20754752985',
     ),
          UserModel(
       id: 3,
       name: 'Ahmed Hamed Mohamed',
       phone: '+20734682435',
     ),
          UserModel(
       id: 1,
       name: 'Hasnaa Hamed Mohamed',
       phone: '+207346846463',
     ),
          UserModel(
       id: 2,
       name: 'BaBa Hamed Mohamed',
       phone: '+20754752985',
     ),
          UserModel(
       id: 3,
       name: 'Ahmed Hamed Mohamed',
       phone: '+20734682435',
     ),
          UserModel(
            id: 1,
            name: 'Hasnaa Hamed Mohamed',
            phone: '+207346846463',
          ),
          UserModel(
            id: 2,
            name: 'BaBa Hamed Mohamed',
            phone: '+20754752985',
          ),
          UserModel(
            id: 3,
            name: 'Ahmed Hamed Mohamed',
            phone: '+20734682435',
          ),
        ];

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
        body:  ListView.separated(
            itemBuilder: (context, index) => buildUserItem(users[index]),
            separatorBuilder: (context, index) =>  Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 25,
              ),
              child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[300],),
            ),
            itemCount: users.length,
        ),
      );
  }
}
Widget buildUserItem(UserModel user ) =>Padding(
  padding:const EdgeInsetsDirectional.all(20),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
       CircleAvatar(
        backgroundColor: Colors.lightGreen,
        radius: 35,
        child: Text( '${user.id}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.white,

          ),
        ),
      ),
      const SizedBox(
        width: 15,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(user.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text( user.phone,
              style:const TextStyle(
                  color: Colors.  teal,
                  fontSize: 17
              ),
            ),
          ],
        ),
      ),

    ],
  ),
);