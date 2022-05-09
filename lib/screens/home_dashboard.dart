import 'package:engaztask/bloc/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){return Future.value(false);},
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          AppCubit appCubit = BlocProvider.of<AppCubit>(context);
          return Scaffold(
            backgroundColor: Colors.white24.withOpacity(.9),
            bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: appCubit.index,
              items: appCubit.getMainCategories(),
              onTap: appCubit.changeIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.orange,
            ),
            body: appCubit.adminScreens()[appCubit.index],
          );
        },
      ),
    );
  }
}
