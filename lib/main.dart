import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => CounterCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}
