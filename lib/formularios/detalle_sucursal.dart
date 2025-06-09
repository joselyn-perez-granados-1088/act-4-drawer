import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({
    Key? key,
    required this.sucursalId,
    required this.sucursalName,
    required this.sucursalDescription,
    required this.sucursalTel,
    required this.sucursalCorreo,
    required this.sucursalHora,
    required this.sucursalEmp,
  }) : super(key: key);

  final String sucursalId;
  final String sucursalName;
  final String sucursalDescription;
  final String sucursalTel;
  final String sucursalCorreo;
  final String sucursalHora;
  final String sucursalEmp;

  Widget _buildDataRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, size: 18, color:  const Color.fromARGB(200,143,188,143)),
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
          "Detalles de la Sucursal",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor:  const Color.fromARGB(100,143,188,143),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.grey.shade100,
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor:  const Color.fromARGB(100,143,188,143),
                      child: Icon(Icons.store, color: Colors.white, size: 28),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sucursalName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text("ID: $sucursalId"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _buildDataRow(Icons.location_on, "Dirección:", sucursalDescription),
                _buildDataRow(Icons.call, "Teléfono:", sucursalTel),
                _buildDataRow(Icons.email, "Correo:", sucursalCorreo),
                _buildDataRow(Icons.access_time, "Horario:", sucursalHora),
                _buildDataRow(Icons.badge, "Encargado:", sucursalEmp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}