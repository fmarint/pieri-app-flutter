import 'package:flutter/material.dart';
import 'package:pieri_app/revisarcorreo_page.dart';

class RecuperarContrasenaPage extends StatefulWidget {
  const RecuperarContrasenaPage({super.key});

  @override
  State<RecuperarContrasenaPage> createState() =>
      _RecuperarContrasenaPageState();
}

class _RecuperarContrasenaPageState extends State<RecuperarContrasenaPage> {
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
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.all(6),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/logo_alterno.png'),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: const Text(
                        "Ingresa tu correo y te enviaremos instrucciones para reiniciar tu contraseña.",
                        maxLines: 3,
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // Password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      // obscureText: true,
                      controller: _userController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0))),
                        labelText: 'E-mail',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // Forgot Password
                  Container(
                    width: double.infinity,
                    height: 45.0,
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                      ),
                      icon: const Icon(Icons.account_circle_outlined),
                      label: const Text(
                        "Restablecer contraseña",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito",
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RevisarCorreoPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
