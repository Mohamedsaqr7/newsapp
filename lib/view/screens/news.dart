import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/bloc/newscubit/newscubit.dart';
import '../../viewmodel/bloc/newscubit/newsstate.dart';
import '../component/newswidget.dart';

class news extends StatelessWidget {
  
  const news({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<newscubit,newsstate>(
      listener: (context, state) {      },
      builder: (context, state) {
        var Cubit=newscubit.get(context);
        return
       ListView.separated(itemBuilder: (context, index) {
       return newswidget(article1: Cubit.newsmod?.articles?[index],); 
      }, separatorBuilder: (context, index) => SizedBox(height: 10,),itemCount: 
      Cubit.newsmod?.articles?.length ??0,);
      },
    );
  }
}