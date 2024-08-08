
import 'package:dio/dio.dart';

class DioHelpler2{

  static Dio? dio2 ;

  static void init(){
    dio2 = Dio(
      BaseOptions(
        baseUrl:'https://newsapi.org/' ,
        receiveDataWhenStatusError: true,)
    );
  }

  static Future<Response?> getData
      ({
    required String url,
    required Map<String,dynamic> query,
})async
  {
    return await dio2?.get(url,queryParameters: query);
  }




}
//base url:   https://newsapi.org/
//method url:  v2/top-headlines?
//queries:      country=us&category=business&apiKey=5bced65a247e48e2973d37715907e4eb
