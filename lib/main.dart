import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Camila Rodriguez Ruiz"),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xff94a1ec),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .start, // Alinea el contenido al inicio (arriba)
            children: <Widget>[
              SizedBox(height: 20), // Espacio en la parte superior
              Text(
                'Camila Rodriguez Ruiz\nMatricula: 22308051281300',
                textAlign: TextAlign.center, // Centra el texto
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40), // Espacio entre el texto y los iconos
              // Primera fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.star,
                      label: 'Favorito',
                      color: Colors.deepPurple),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.favorite,
                      label: 'Me gusta',
                      color: Colors.deepPurple),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.thumb_up,
                      label: 'Like',
                      color: Colors.deepPurple),
                  SizedBox(width: 20), // Espacio entre los iconos
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.home,
                      label: 'Inicio',
                      color: Colors.deepPurple),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.settings,
                      label: 'Ajustes',
                      color: Colors.deepPurple),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.person,
                      label: 'Perfil',
                      color: Colors.deepPurple),
                  SizedBox(width: 20), // Espacio entre los iconos
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} // fin clase mis iconos

// Widget personalizado para un icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel(
      {required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 40.0, color: color), // Icono con color personalizado
        SizedBox(height: 5), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)), // Subtítulo
      ],
    );
  }
}
