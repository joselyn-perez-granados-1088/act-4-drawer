import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalle_sucursal.dart';

class Sucursales extends StatefulWidget {
  const Sucursales({super.key});

  @override
  State<Sucursales> createState() => _SucursalesState();
}

class _SucursalesState extends State<Sucursales> {
  final _sucursalIdController = TextEditingController();
  final _sucursalController = TextEditingController();
  final _sucursalDesController = TextEditingController();
  final _sucursalTelController = TextEditingController();
  final _sucursalCorreoController = TextEditingController();
  final _sucursalHoraController = TextEditingController();
  final _sucursalEmpController = TextEditingController();

  @override
  void dispose() {
    _sucursalIdController.dispose();
    _sucursalController.dispose();
    _sucursalDesController.dispose();
    _sucursalTelController.dispose();
    _sucursalCorreoController.dispose();
    _sucursalHoraController.dispose();
    _sucursalEmpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100,143,188,143),
        title: const Text("Form Tabla Sucursal"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _sucursalIdController,
              fieldName: "Id Sucursal",
              myIcon: Icons.confirmation_number,
              prefixIconColor: const Color.fromARGB(200,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _sucursalController,
              fieldName: "Nombre sucursal",
              myIcon: Icons.business,
              prefixIconColor: const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _sucursalDesController,
              fieldName: "Dirección",
              myIcon: Icons.location_on,
              prefixIconColor:  const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _sucursalTelController,
              fieldName: "Teléfono",
              myIcon: Icons.phone,
              prefixIconColor: const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _sucursalCorreoController,
              fieldName: "Correo",
              myIcon: Icons.email,
              prefixIconColor:  const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _sucursalHoraController,
              fieldName: "Horario de atención",
              myIcon: Icons.access_time,
              prefixIconColor:  const Color.fromARGB(100,143,188,143),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _sucursalEmpController,
              fieldName: "Id Empleado",
              myIcon: Icons.badge,
              prefixIconColor:  const Color.fromARGB(100,143,188,143),
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
              sucursalId: _sucursalIdController.text,
              sucursalName: _sucursalController.text,
              sucursalDescription: _sucursalDesController.text,
              sucursalTel: _sucursalTelController.text,
              sucursalCorreo: _sucursalCorreoController.text,
              sucursalHora: _sucursalHoraController.text,
              sucursalEmp: _sucursalEmpController.text,
            ),
          ),
        );
      },
      child: Text(
        "Agregar".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(100,143,188,143),
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
          borderSide: BorderSide(color:  const Color.fromARGB(200,143,188,143)),
        ),
        labelStyle: const TextStyle(color:  const Color.fromARGB(200,143,188,143)),
      ),
    );
  }
}