import 'package:flutter/material.dart';

class ForgotpwdPage extends StatefulWidget {
  const ForgotpwdPage({super.key});

  @override
  State<ForgotpwdPage> createState() => _ForgotpwdPageState();
}

class _ForgotpwdPageState extends State<ForgotpwdPage> {
  final TextEditingController _userController = TextEditingController();
  final Color _colorRedPp = const Color.fromRGBO(173, 20, 56, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: _colorRedPp,
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
                  child: Image.asset('assets/images/logo_certitificado.png')),
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.key,
                            color: Color.fromARGB(255, 34, 34, 34),
                            size: 34.0,
                          ),
                          Text(
                            "  Ingrese su correo corporativo...",
                            style: TextStyle(
                              color: Color.fromARGB(255, 34, 34, 34),
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
                  // Password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      // obscureText: true,
                      controller: _userController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
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
                        "Recuperar contraseña",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
