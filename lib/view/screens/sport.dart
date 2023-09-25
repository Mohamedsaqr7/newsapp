import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/view/component/sportwidget.dart';

import '../../viewmodel/bloc/sportcubit/sportcubit.dart';
import '../../viewmodel/bloc/sportcubit/sportstate.dart';

class sport extends StatelessWidget {
  const sport({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<sportcubit,sportstate>(
      listener: (context, state) {      },
      builder: (context, state) {
        var Cubit=sportcubit.get(context);
        return ListView.separated(itemBuilder: (context, index) {
     return sportwidget(articles2: Cubit.sportmod?.articles?[index],); 
    }, separatorBuilder: (context, index) => SizedBox(height: 10,),itemCount: 
    Cubit.sportmod?.articles?.length ??0,);
 
      
      });
    }
}

