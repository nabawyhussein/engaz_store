import 'package:engaztask/bloc/app_cubit/app_cubit.dart';
import 'package:engaztask/bloc/products/productcontroller_cubit.dart';
import 'package:engaztask/screens/home_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(create: (context) => AppCubit(),),
        BlocProvider<ProductControllerCubit>(create: (context) => ProductControllerCubit(),),
      ],
      child: MaterialApp(
        title: 'Engaz_Task',
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

