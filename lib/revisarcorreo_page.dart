import 'package:flutter/material.dart';
import 'package:pieri_app/home_page.dart';
import 'package:pieri_app/login_page.dart';
// import 'package:pieri_app/recuperarcontrasena_page.dart';

class RevisarCorreoPage extends StatefulWidget {
  const RevisarCorreoPage({super.key});

  @override
  State<RevisarCorreoPage> createState() => _RevisarCorreoPageState();
}

class _RevisarCorreoPageState extends State<RevisarCorreoPage> {
  final TextEditingController _userController = TextEditingController();
  // final Color _colorRedPp = const Color.fromRGBO(173, 20, 56, 1.0);
  // final Color _colorRedPp = const Color.fromRGBO(95, 153, 119, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        // backgroundColor: _colorRedPp,
        title: const Text(
          "Recuperar contraseña",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "¡Revisa tu\n correo!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 46.0,
                    fontFamily: "Roboto"),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Se ha enviado un correo a\n"),
                      TextSpan(
                          text: "fmarin.devnet@gmail.com",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 31, 26, 1.0),
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text:
                              "con instrucciones para restablecer tu contraseña."),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // Password
            const SizedBox(
              height: 25,
            ),
            // Forgot Password
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25.0),
                  height: 45.0,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                    ),
                    icon: const Icon(Icons.account_circle_outlined),
                    label: const Center(
                      child: Text(
                        "Volver al login",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
