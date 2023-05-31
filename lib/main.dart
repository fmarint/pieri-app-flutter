import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // themeMode: ThemeMode.dark ,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: "Nunito",
        
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 43, 129, 95),
            onPrimary: Color.fromARGB(255, 235, 239, 237),
            secondary: Color.fromARGB(255, 173, 62, 48),
            onSecondary: Color.fromARGB(255, 195, 155, 155),
            error: Colors.yellowAccent,
            onError: Colors.yellow,
            background: Colors.white, //Fondo de los Widgets
            onBackground: Color.fromARGB(153, 62, 63, 62),
            //Color de Fondo de Botones por ejm.
            surface: Color.fromRGBO(43, 129, 95, 1.0),
            //Color de Texto en Botones y Cajas
            onSurface: Color.fromRGBO(43, 129, 95, 1.0),
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Colors.white,
          ),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color.fromARGB(255, 238, 243, 241),
            onPrimary: Colors.greenAccent,
            secondary: Color.fromARGB(255, 173, 62, 48),
            onSecondary: Color.fromARGB(255, 195, 155, 155),
            error: Colors.yellowAccent,
            onError: Colors.yellow,
            background: Color.fromARGB(255, 40, 37, 37), //Fondo de los Widgets
            //Borde de los botones
            onBackground: Color.fromARGB(255, 77, 138, 133),
            //Color de Fondo de Botones por ejm.
            surface: Color.fromRGBO(76, 162, 125, 1),
            //Color de Texto en Botones y Cajas
            onSurface: Color.fromARGB(255, 187, 193, 191),
          ),
        ),
        // home: const WavePage());
        home: const LoginPage());
    // home: const HomePage());
  }
}

//{"palette":{"common":{"black":"#000","white":"#fff"},"background":{"paper":"#fff","default":"#fafafa"},"primary":{"light":"rgba(81, 172, 87, 1)","main":"rgba(43, 129, 95, 1)","dark":"rgba(30, 91, 67, 1)","contrastText":"#fff"},"secondary":{"light":"#ff4081","main":"#f50057","dark":"#c51162","contrastText":"#fff"},"error":{"light":"#e57373","main":"#f44336","dark":"#d32f2f","contrastText":"#fff"},"text":{"primary":"rgba(0, 0, 0, 0.87)","secondary":"rgba(0, 0, 0, 0.54)","disabled":"rgba(0, 0, 0, 0.38)","hint":"rgba(0, 0, 0, 0.38)"}}}

