import 'package:flutter/material.dart';
import 'pagina_base.dart';

class PaginaColecciones extends StatelessWidget {
  const PaginaColecciones({super.key});
  @override
  Widget build(BuildContext context) {
    return const PaginaBase(
      titulo: "COLECCIONES",
      subtitulo: "Tendencias de Temporada",
      imageUrl: 'https://images.unsplash.com/photo-1445205170230-053b83016050?q=80&w=600', // Colección de Ropa
    );
  }
}
