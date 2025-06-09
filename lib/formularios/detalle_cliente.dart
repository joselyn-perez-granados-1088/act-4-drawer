import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.clienteId,
    required this.clienteName,
    required this.clienteApellidos,
    required this.clienteDireccion,
    required this.clienteTelefono,
    required this.clienteCorreo,
    required this.clienteMembresia,
  }) : super(key: key);

  final String clienteId;
  final String clienteName;
  final String clienteApellidos;
  final String clienteDireccion;
  final String clienteTelefono;
  final String clienteCorreo;
  final String clienteMembresia;

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, size: 18, color: const Color.fromARGB(200,143,188,143)),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Detalles Cliente",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(100,143,188,143),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.grey.shade100,
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Cabecera con nombre
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor:  const Color.fromARGB(100,143,188,143),
                      child: Icon(Icons.person_rounded, color: Colors.white, size: 28),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          clienteName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Text("ID: $clienteId"),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 16.0),
                _buildDetailRow(Icons.people_alt_rounded, 'Apellidos:', clienteApellidos),
                _buildDetailRow(Icons.location_on_rounded, 'Dirección:', clienteDireccion),
                _buildDetailRow(Icons.phone_rounded, 'Teléfono:', clienteTelefono),
                _buildDetailRow(Icons.email_rounded, 'Correo:', clienteCorreo),
                _buildDetailRow(Icons.card_membership_rounded, 'Membresía:', clienteMembresia),

                const SizedBox(height: 16.0),

                // Botón eliminar
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}