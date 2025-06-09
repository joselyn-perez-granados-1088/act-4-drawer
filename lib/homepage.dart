import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Formulario Tablas"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(100,143,188,143),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen),
              accountName: Text("Joselyn-Perez-1088"),
              accountEmail: Text("a.22308051281088@cbtis128.edu.mx"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/leysi.png'),
                  )
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 81, 10, 87)),
                title: Text("Pagina Inicio"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/sucursales");},
                leading: Icon(Icons.business, color: Colors.black),
                title: Text("Sucursales"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/clientes");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Clientes"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}