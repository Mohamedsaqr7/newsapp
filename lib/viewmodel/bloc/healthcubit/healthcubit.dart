
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/model/health.dart';
import 'package:newsapp/viewmodel/bloc/healthcubit/healthstate.dart';

class healthcubit extends Cubit<healthstate> {
  healthcubit() : super(healthinitstate());
  static healthcubit get(context) => BlocProvider.of<healthcubit>(context);
  healthmodel? healthmod;
   Future<void> gethealth () async{
    emit(healthloadingstate());
    var dio= Dio();
    try{
      var response =await dio.get('https://newsapi.org/v2/top-headlines',queryParameters: 
      {
        'apiKey':'d8ca04bfd81f4d6680ff5f66cb7b74b4',
        'country':'eg',
        'category':'health'
      });
    print(response.data.toString());
        healthmod=healthmodel.fromJson(response.data);

    emit(healthsuccessstate());
    }catch(e){emit(healtherrorstate());}
  }
}