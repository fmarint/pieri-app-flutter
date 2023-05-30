import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown  ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "RobotoMono",
          colorScheme: ColorScheme.fromSeed(
            // seedColor: const Color.fromARGB(255, 133, 12, 26),
            seedColor: const Color.fromARGB(255, 95, 153, 119),
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ),
        // home: const WavePage());
        home: const LoginPage());
    // home: const HomePage());
  }
}
