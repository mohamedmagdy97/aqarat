import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/modules/splash_screen.dart';
import 'package:aqarat_app/shared/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/Home/cubit/cubit.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver() ;

  runApp(MultiBlocProvider(providers: [
    /// Home
    BlocProvider<AppCubit>(create: (context) => AppCubit()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 16,
            color: defaultColor,
            fontFamily: 'STC',
          ),

        ),
        fontFamily: 'STC',
      ),
      home: SplashScreen(),
    );
  }
}
