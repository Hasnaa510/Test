import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/layout/News_App/cubit/cubit.dart';
import 'package:flutter_project1/layout/News_App/cubit/states.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder:(context, state) {

        var cubit = NewsCubit.get(context);
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => buildArticleItem(cubit.business[index],context ),
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.deepOrange,
              ),
            ),
            itemCount: cubit.business.length);
      },
    );
  }
}

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
                    style: Theme.of(context).textTheme.bodyText1
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