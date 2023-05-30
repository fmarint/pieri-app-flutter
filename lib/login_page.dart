// ignore_for_file: sort_child_properties_last
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pieri_app/forgotpwd_page.dart';
import 'package:pieri_app/home_page.dart';
import 'package:http/http.dart' as http;
// import 'package:pieri_app/src/widgets/WaveClipper.dart';
import 'package:pieri_app/src/widgets/wave.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _urlBase = "https://622fd01cf113bfceed41d1fc.mockapi.io/";

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final Color _colorRedPp = const Color.fromRGBO(95, 153, 119, 1.0);
  // final Color _colorRedPp = const Color.fromARGB(206, 147, 19, 19);
  Color _colorEmailIcon = const Color.fromARGB(255, 48, 45, 45);
  Color _colorPassIcon = const Color.fromARGB(255, 48, 45, 45);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: Wave(heightPrimary: 100.0,heightSecondary: 130.0),
        preferredSize: Size.fromHeight(300),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: 125.0,
                child: Image.asset('assets/images/logo_alterno.png'),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 125.0,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 40.0,
                          left: 40.0,
                          child: Text(
                            "Hola!",
                            style: TextStyle(
                                color: _colorRedPp,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w900,
                                fontFamily: "RobotoMono"),
                          ),
                        ),
                        Positioned(
                          top: 70.0,
                          left: 50.0,
                          child: Text(
                            "  Ingrese sus datos para iniciar sesion.",
                            style: TextStyle(
                                color: _colorRedPp,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                      bottom: 20.0,
                    ),
                    child: Focus(
                      onFocusChange: (isFocus) {
                        onFocusInputChange(isFocus, "Email");
                      },
                      child: TextField(
                        controller: _userController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: _colorEmailIcon,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                          labelText: 'E-mail',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Focus(
                      onFocusChange: (isFocus) {
                        onFocusInputChange(isFocus, "Pass");
                      },
                      child: TextField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: _colorPassIcon,
                          ),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          labelText: 'Contraseña',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 45.0,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                      ),
                      icon: const Icon(Icons.login),
                      label: const Text(
                        "INGRESAR",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      onPressed: _onTapIngresar,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    hoverColor: Colors.white,
                    highlightColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotpwdPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Olvide mi contraseña?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 117, 205),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onFocusInputChange(bool isFocus, String field) {
    // print({field,isFocus});
    setState(
      () {
        if (field == "Email") {
          _colorEmailIcon =
              isFocus ? _colorRedPp : const Color.fromARGB(137, 31, 30, 30);
        } else if (field == "Pass") {
          _colorPassIcon =
              isFocus ? _colorRedPp : const Color.fromARGB(137, 31, 30, 30);
        }
      },
    );
  }

  void _onTapIngresar() async {
    final response = await http.get(Uri.parse("${_urlBase}componentes"));
    final data = json.decode(response.body);

    final String userName = (data[0]["username"]);
    final String password = (data[0]["password"]);

    if (_userController.text == userName &&
        _passwordController.text == password) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Datos incorrectos,favor de validar!"),
          backgroundColor: _colorRedPp,
        ),
      );
    }
  }
}
