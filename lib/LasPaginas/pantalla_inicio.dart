import 'package:flutter/material.dart';
import 'pagina_base.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});
  @override
  Widget build(BuildContext context) {
    return const PaginaBase(
      titulo: "URBA Y FLOW",
      subtitulo: "Estilo callejero con actitud",
      imageUrl: 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?q=80&w=600', // Ropa Urbana
    );
  }
}
