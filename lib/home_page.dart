import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color _colorRedPp = const Color.fromARGB(255, 173, 20, 56);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main Page",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: _colorRedPp,
          title: const Text("Home"),
          elevation: 5.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              tooltip: "Configuracion",
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100.0,
                child: DrawerHeader(
                  padding: const EdgeInsets.only(
                      top: 22.0, left: 16.0, bottom: 16.0),
                  decoration: BoxDecoration(
                    color: _colorRedPp,
                  ),
                  child: const Text(
                    'OPCIONES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.insights_rounded,
                  size: 34.0,
                ),
                title: const Text('Ventas del día'),
                onTap: () {},
                subtitle: const Text("Grafico de ventas"),
                iconColor: Colors.blue[600],
                // trailing: Icon(Icons.attach_money_rounded) ,
              ),
              const Divider(
                height: 5.0,
              ),
              ListTile(
                leading: const Icon(
                  Icons.attach_money_rounded,
                  size: 34.0,
                ),
                title: const Text('Tipo de Cambio'),
                subtitle: const Text("Listado de tipo de cambio"),
                onTap: () {},
                iconColor: Colors.green[800],
              ),
              const Divider(
                height: 5.0,
              ),
              ListTile(
                title: const Text("Precio Unitario"),
                subtitle: const Text(
                    "Listado de precio unitario de venta de Productos."),
                leading: const Icon(
                  Icons.grid_goldenratio,
                  size: 34.0,
                ),
                onTap: () {},
                iconColor: Colors.red[900],
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: Center(
            child: Text("Main Page"),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Aprobaciones',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Indicadores',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 179, 41, 36),
          onTap: (index) {},
        ),
      ),
    );
  }
}
