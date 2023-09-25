import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/view/component/healthwidget.dart';

import '../../viewmodel/bloc/healthcubit/healthcubit.dart';
import '../../viewmodel/bloc/healthcubit/healthstate.dart';

class food extends StatelessWidget {
  const food({super.key});

  @override
  Widget build(BuildContext context) {
     return BlocConsumer<healthcubit,healthstate>(
      listener: (context, state) {      },
      builder: (context, state) {
        var Cubit=healthcubit.get(context);
        return ListView.separated(itemBuilder: (context, index) {
     return healthwidget(articles3: Cubit.healthmod?.articles?[index],); 
    }, separatorBuilder: (context, index) => SizedBox(height: 10,),itemCount: 
    Cubit.healthmod?.articles?.length ??0,);
  
        });
   }
}

