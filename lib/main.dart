import 'package:flutter/material.dart';
import 'package:myapp/formularios/form_cliente.dart';
import 'package:myapp/formularios/form_sucursal.dart';
import 'package:myapp/homepage.dart';
import 'package:firebase_core/firebase_core.dart'; // Importar Firebase Core
import 'firebase_options.dart'; // Importar firebase_options.dart

void main() async { // Marcar main como async
  WidgetsFlutterBinding.ensureInitialized(); // Asegurar que Flutter esté inicializado
  await Firebase.initializeApp( // Inicializar Firebase
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/sucursales": (context) => Sucursales(),
        "/clientes": (context) => Clientes(),
      },
    );
  }
}
