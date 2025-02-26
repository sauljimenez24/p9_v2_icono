import 'package:flutter/material.dart';

void main() => runApp(MiIconos());

class MiIconos extends StatelessWidget {
  const MiIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Saul Jimenez \n 22308051281222"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                      icon: Icons.home, subtitle: 'Inicio', color: Colors.red),
                  IconWithSubtitle(
                      icon: Icons.favorite,
                      subtitle: 'Favoritos',
                      color: Colors.pink),
                  IconWithSubtitle(
                      icon: Icons.star,
                      subtitle: 'Destacados',
                      color: Colors.orange),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila

              SizedBox(height: 20), // Espacio entre las filas
              // Tercera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                      icon: Icons.settings,
                      subtitle: 'Configuración',
                      color: Colors.blue),
                  IconWithSubtitle(
                      icon: Icons.notifications,
                      subtitle: 'Notificaciones',
                      color: Colors.purple),
                  IconWithSubtitle(
                      icon: Icons.person,
                      subtitle: 'Perfil',
                      color: Colors.teal),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Cuarta fila
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un ícono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color color;

  const IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 50.0, color: color), // Color personalizado
        SizedBox(height: 8), // Espacio entre el ícono y el texto
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
