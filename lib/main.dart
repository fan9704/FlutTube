import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

import 'splash_page.dart';
import 'simple_bloc_delegate.dart';
import 'firebase/user_repository.dart';
import 'authentication_bloc/bloc.dart';
import 'login/login_page.dart';

//void main() => runApp(MyApp());
void main(){
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutTube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
