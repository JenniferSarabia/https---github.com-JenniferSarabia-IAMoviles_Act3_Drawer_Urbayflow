import 'package:flutter/material.dart';
import 'pagina_base.dart';

class PaginaOfertas extends StatelessWidget {
  const PaginaOfertas({super.key});
  @override
  Widget build(BuildContext context) {
    return const PaginaBase(
      titulo: "OFERTAS",
      subtitulo: "Descuentos Increíbles",
      imageUrl: 'https://raw.githubusercontent.com/JenniferSarabia/Imagenes-para-Flutter-6J-11-Febrero/refs/heads/main/Captura%20de%20pantalla%202026-03-11%20115826.png',
    );
  }
}
