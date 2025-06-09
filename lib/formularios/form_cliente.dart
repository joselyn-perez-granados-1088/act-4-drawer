import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalle_cliente.dart';

class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  final _clienteIdController = TextEditingController();
  final _clienteController = TextEditingController();
  final _clienteApController = TextEditingController();
  final _clienteDirController = TextEditingController();
  final _clienteTelController = TextEditingController();
  final _clienteCorreoController = TextEditingController();
  final _clienteMemController = TextEditingController();

  @override
  void dispose() {
    _clienteIdController.dispose();
    _clienteController.dispose();
    _clienteApController.dispose();
    _clienteDirController.dispose();
    _clienteTelController.dispose();
    _clienteCorreoController.dispose();
    _clienteMemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(100,143,188,143),
        title: const Text("Form Tabla Cliente"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _clienteIdController,
              fieldName: "Id Cliente",
              myIcon: Icons.confirmation_number,
              prefixIconColor: const Color.fromARGB(270,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _clienteController,
              fieldName: "Nombre",
              myIcon: Icons.person,
              prefixIconColor:  const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _clienteApController,
              fieldName: "Apellidos",
              myIcon: Icons.people_alt,
              prefixIconColor: const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _clienteDirController,
              fieldName: "Dirección",
              myIcon: Icons.home,
              prefixIconColor: const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _clienteTelController,
              fieldName: "Teléfono",
              myIcon: Icons.phone,
              prefixIconColor: const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _clienteCorreoController,
              fieldName: "Correo",
              myIcon: Icons.email,
              prefixIconColor: const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _clienteMemController,
              fieldName: "Membresía",
              myIcon: Icons.card_membership,
              prefixIconColor: const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  Widget myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              clienteId: _clienteIdController.text,
              clienteName: _clienteController.text,
              clienteApellidos: _clienteApController.text,
              clienteDireccion: _clienteDirController.text,
              clienteTelefono: _clienteTelController.text,
              clienteCorreo: _clienteCorreoController.text,
              clienteMembresia: _clienteMemController.text,
            ),
          ),
        );
      },
      child: Text(
        "Agregar".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(150,143,188,143),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(100,143,188,143)),
        ),
        labelStyle: const TextStyle(color: const Color.fromARGB(100,143,188,143)),
      ),
    );
  }
}