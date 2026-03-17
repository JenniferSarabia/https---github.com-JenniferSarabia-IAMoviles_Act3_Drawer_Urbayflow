import 'package:flutter/material.dart';
import 'package:myapp/LasPaginas/pagina_base.dart';
import 'LasPaginas/pantalla_inicio.dart';
import 'LasPaginas/pagina_colecciones.dart';
import 'LasPaginas/pagina_novedades.dart';
import 'LasPaginas/pagina_ofertas.dart';
import 'LasPaginas/pagina_productos.dart';

void main() {
  runApp(const UrbaAndFlowApp());
}

class UrbaAndFlowApp extends StatelessWidget {
  const UrbaAndFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Urba y Flow',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF004691), // Azul Urba y Flow
        scaffoldBackgroundColor: const Color(0xFFE1E9F8), // Fondo azul claro bonito
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF004691),
          foregroundColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.black45,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5, color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/colecciones': (context) => const PaginaColecciones(),
        '/novedades': (context) => const PaginaNovedades(),
        '/ofertas': (context) => const PaginaOfertas(),
        '/productos': (context) => const PaginaProductos(),
      },
    );
  }
}
