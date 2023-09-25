
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/model/sportsmodel.dart';
import 'package:newsapp/viewmodel/bloc/sportcubit/sportstate.dart';

class sportcubit extends Cubit<sportstate> {
  sportcubit() : super(sportinitstate());
  static sportcubit get(context) => BlocProvider.of<sportcubit>(context);
  sportmodel?sportmod;
  Future<void> getsport () async{
    emit(sportloadingstate());
    var dio= Dio();
    try{
      var response =await dio.get('https://newsapi.org/v2/top-headlines',queryParameters: 
      {
        'apiKey':'d8ca04bfd81f4d6680ff5f66cb7b74b4',
        'country':'eg',
        'category':'sports',
      });
    print(response.data.toString());
        sportmod=sportmodel.fromJson(response.data);

    emit(sportsuccessstate());
    }catch(e){
      emit(sporterrorstate());
    }
  }
}