import 'package:flutter/material.dart';
import 'package:pieri_app/src/panels/home_panel.dart';
// import 'package:pieri_app/login_page.dart';
// import 'package:pieri_app/src/widgets/wave.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color _colorRedPp = const Color.fromARGB(255, 44, 129, 95);
  // final Color _colorRedPp = const Color.fromARGB(255, 173, 20, 56);
  SampleItem? selectedMenu;
  int _currentPage = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main Page",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _colorRedPp,
        ),
        fontFamily: "Nunito",
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //  appBar:const PreferredSize(
        // child: Wave(),
        // preferredSize:  Size.fromHeight(100),
//  CustomPaint(
//         painter: _HeaderPaintWaves(),
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: _colorRedPp,
          title: const Row(
            children: [
              // Image.asset("assets/images/logo_certitificado.png",width: 35.0,height: 30.0,),
              Text(
                "Kambiazoom SAC",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto",
                ),
              ),
            ],
          ),
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.help),
            ),
            PopupMenuButton(
              icon: const Icon(Icons.settings),
              tooltip: "Configuracion",
              onSelected: (SampleItem item) {
                selectedMenu = item;
                if (selectedMenu == SampleItem.itemThree) {
                  Navigator.pop(context);
                }
              },
              // child: Text("Child"), //Tiene que ser un child o un icon, no puede ser ambos al mismo tiempo
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<SampleItem>>[
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemOne,
                    child: Row(
                      children: [
                        Icon(Icons.account_circle_outlined,
                            color: Colors.black87),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('fmarin'),
                      ],
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemTwo,
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.black87,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Ver perfil'),
                      ],
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemThree,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.black87,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Cerrar sesion'),
                      ],
                    ),
                  ),
                ];
              },
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
        body: PageView(
          controller: pageController,
          children: <Widget>[
            const HomePanel(),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text("Aprobaciones"),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text("Indicadores"),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
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
          selectedItemColor: _colorRedPp,
          onTap: (index) {
            _currentPage = index;
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
            setState(() {});
          },
        ),
      ),
    );
  }
}

// class _HeaderPaintWaves extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = const Color.fromARGB(255, 173, 20, 56)
//       ..style = PaintingStyle.fill;
//     // ..strokeWidth = 0;

//     final path = Path();
//     path.lineTo(0, size.height * 0.6);
//     path.quadraticBezierTo(
//         size.width * 0.2, size.height * 1.3, size.width * 0.5, size.height / 2);

//     path.quadraticBezierTo(
//         size.width * 0.75, 0.0, size.width, size.height * 1.0);
//     path.lineTo(size.width, 0);
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
