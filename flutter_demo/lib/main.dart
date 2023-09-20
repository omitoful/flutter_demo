import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/cubit/app_cubit_logics.dart';
import 'package:flutter_demo/cubit/app_cubits.dart';
import 'package:flutter_demo/pages/detail_page.dart';
import 'package:flutter_demo/pages/nav_pages/main_page.dart';
import 'package:flutter_demo/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(),
        child: AppCubitLogics(),
      ),
    );
  }
}
