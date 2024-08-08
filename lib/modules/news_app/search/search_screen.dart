import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/News_App/cubit/cubit.dart';
import '../../../layout/News_App/cubit/states.dart';


class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var cubit =NewsCubit.get(context);
        return  Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Searsh'),
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    NewsCubit.get(context).getSearch(value);
                  },
                ),
                SizedBox(height: 15,),
                Expanded(
                  child: ListView.separated(
                    physics:  BouncingScrollPhysics(),
                      itemBuilder: (context, index) => buildArticleItem(cubit.search[index],context),
                      separatorBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 2,
                      ),
                      itemCount: cubit.search.length),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


// Widget buildArticleItem(context) {
//   return Padding(
//     padding: const EdgeInsets.all(10.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: 120,
//           height: 120,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               image: const DecorationImage(
//                 fit: BoxFit.cover,
//                 image: NetworkImage(
//                     'https://s.yimg.com/uu/api/res/1.2/8g8fx5L0hon1E78yjuJUZg--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-04/8dae1f70-d542-11ed-9bdf-3df9eb315d5d.cf.jpg'),
//               )),
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//         Expanded(
//           child: Container(
//             height: 120,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Expanded(
//                   child: Text(
//                     'shasjkdhasjkahdl}',
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 3,
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'jkhfkjahfafh',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

Widget buildArticleItem (article, context){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('${article['urlToImage']}'),
              )
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text('${article['title']}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text('${article['publishedAt']}',
                  style: TextStyle(
                      color: Colors.grey
                  ),),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}