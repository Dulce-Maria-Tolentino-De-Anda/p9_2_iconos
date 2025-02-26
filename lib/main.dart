import 'package:flutter/material.dart';

void main() => runApp(MisIconosApp());

class MisIconosApp extends StatelessWidget {
  const MisIconosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dulce Maria Tolentino"),
          titleTextStyle: TextStyle(color: Color(0xffad7fd2), fontSize: 30),
          centerTitle: true,
          backgroundColor: Color(0xffffd4e3),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Dulce Tolentino 1367",
              style: TextStyle(fontSize: 30, color: Color(0xff060b52)),
            ),
            SizedBox(
              height: 100,
            ),
            // Primera fila con 3 iconos y subtítulos
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centrar los iconos
              children: <Widget>[
                IconWithLabel(
                  icon: Icons.add_moderator,
                  color: Color(0xffefbdda),
                  label: 'Moderador',
                ),
                SizedBox(width: 20), // Espacio entre los iconos
                IconWithLabel(
                  icon: Icons.add_alarm,
                  color: Color(0xffb7e5ba),
                  label: 'Alarma',
                ),
                SizedBox(width: 20), // Espacio entre los iconos
                IconWithLabel(
                  icon: Icons.email,
                  color: Color(0xffa8d3f6),
                  label: 'Correo',
                ),
              ],
            ),
            SizedBox(height: 50), // Espacio entre las filas
            // Segunda fila con 3 iconos y subtítulos
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centrar los iconos
              children: <Widget>[
                IconWithLabel(
                  icon: Icons.favorite,
                  color: Color(0xffecc1c1),
                  label: 'Favorito',
                ),
                SizedBox(width: 20), // Espacio entre los iconos
                IconWithLabel(
                  icon: Icons.phone,
                  color: Color(0xffcef9d0),
                  label: 'Teléfono',
                ),
                SizedBox(width: 20), // Espacio entre los iconos
                IconWithLabel(
                  icon: Icons.star,
                  color: Color(0xffe8e2a8),
                  label: 'Estrella',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget personalizado para icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const IconWithLabel({
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40.0, color: color), // Icono
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)), // Subtítulo
      ],
    );
  }
}
