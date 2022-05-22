import 'package:astro_clash/configs/custom_router.dart';
import 'package:astro_clash/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRouter.onGenerateRoute,
      initialRoute: NavScreen.routeName,
    );
    // MultiRepositoryProvider(
    //   providers: [
    //     RepositoryProvider<ChampionRepo>(
    //       create: (context) => ChampionRepo(),
    //     ),
    //   ],
    //   // child: MultiBlocProvider(
    //   //   providers: [],
    //   child: const MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     onGenerateRoute: CustomRouter.onGenerateRoute,
    //     initialRoute: NavScreen.routeName,
    //   ),
    // );
  }
}
