import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/home.dart';
import 'package:newsapp/viewmodel/bloc/healthcubit/healthcubit.dart';
import 'package:newsapp/viewmodel/bloc/newscubit/newscubit.dart';
import 'package:newsapp/viewmodel/bloc/sportcubit/sportcubit.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
       providers: [
        BlocProvider(create: (context) => newscubit()..getnews()),
        BlocProvider(create: (context) => healthcubit()..gethealth()),
        BlocProvider(create: (context) => sportcubit()..getsport()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
    
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: home(),
        
      );
        }),
    );
  }
}

