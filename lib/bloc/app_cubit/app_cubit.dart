import 'package:bloc/bloc.dart';
import 'package:engaztask/screens/category_products_screen.dart';
import 'package:engaztask/screens/main_category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  int index = 0;





  List<BottomNavigationBarItem> getMainCategories()=>[
    BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.dashboard_rounded),label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.notifications),label: ""),

  ];

  List<Widget> adminScreens ()=> [
    Container(),
    MainCategoryScreen(),
    Container(),
    Container(),
    // Container(),
  ];

  changeIndex(int index){
    this.index = index;
    emit(ChangeIndexState());
  }


}
