import 'package:flutter/material.dart';
import 'pagina_base.dart';

class PaginaNovedades extends StatelessWidget {
  const PaginaNovedades({super.key});
  @override
  Widget build(BuildContext context) {
    return const PaginaBase(
      titulo: "NOVEDADES",
      subtitulo: "Recién Llegado al Almacén",
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=600', // Zapatillas Nuevas
    );
  }
}
