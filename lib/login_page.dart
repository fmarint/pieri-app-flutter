import 'package:flutter/material.dart';
import 'package:pieri_app/forgotpwd_page.dart';
import 'package:pieri_app/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _userController = TextEditingController();
  final Color _colorRedPp = Color.fromARGB(206, 147, 19, 19);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.all(6),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/logo_certitificado.png'),
              ),
              //Palabras de bienvenida
              Card(
                elevation: 20,
                shadowColor: const Color.fromARGB(255, 79, 71, 71),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                     SizedBox(
                      height: 60,
                      child: Padding(
                        padding:const EdgeInsets.only(top: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hola!",
                              style: TextStyle(
                                color: _colorRedPp,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "  Ingrese sus datos para iniciar sesion.",
                              style: TextStyle(
                                color: _colorRedPp,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ), // User NAme
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: TextField(
                        controller: _userController,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                        ),
                      ),
                    ),

                    // Password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    // Forgot Password
                    SizedBox(
                      height: 45.0,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(5),
                        ),
                        icon: const Icon(Icons.check),
                        label: const Text(
                          "INGRESAR",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (_userController.text == "fmarin" &&
                              _passwordController.text == "123") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Ingrese los valores"),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotpwdPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Recuperar contraseña?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 11, 114, 197),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
