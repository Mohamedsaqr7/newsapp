
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/model/newsmodel.dart';
import 'package:newsapp/viewmodel/bloc/newscubit/newsstate.dart';

class newscubit extends Cubit<newsstate> {
  newscubit() : super(newsinitstate());
  static newscubit get(context) => BlocProvider.of<newscubit>(context);
newsmodel? newsmod;
  Future<void> getnews () async{
    emit(newsloadingstate());
    var dio= Dio();
    try{
      var response =await dio.get('https://newsapi.org/v2/top-headlines',queryParameters: 
      {
        'apiKey':'d8ca04bfd81f4d6680ff5f66cb7b74b4',
        'country':'eg',
      });
    print(response.data.toString());
    newsmod=newsmodel.fromJson(response.data);
    print(newsmod?.articles?.length ??'noooooo');
    emit(newssuccessstate());
    }catch(e){
      emit(newserrorstate());
    }
  }
}