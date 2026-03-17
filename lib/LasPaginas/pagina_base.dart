import 'package:flutter/material.dart';

class PaginaBase extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String imageUrl;

  const PaginaBase({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      drawer: const DrawerUrbaFlow(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE1E9F8), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(0, 10)),
                  ],
                  border: Border.all(color: const Color(0xFF004691), width: 3),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: Image.network(
                    imageUrl,
                    width: 230,
                    height: 230,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error, size: 100, color: Colors.redAccent),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                          child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                titulo,
                style: const TextStyle(
                    fontSize: 32, fontWeight: FontWeight.w900, color: Color(0xFF004691), letterSpacing: 2),
              ),
              const SizedBox(height: 10),
              Text(
                subtitulo,
                style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 18, color: Colors.black54),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerUrbaFlow extends StatelessWidget {
  const DrawerUrbaFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFE1E9F8),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))),
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF004691), Color(0xFF002D5E)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
            ),
            currentAccountPictureSize: const Size.square(65.0),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1557053964-9377f0154123?q=80&w=400', // URL del nuevo logo
                    fit: BoxFit.cover,
                    width: 65,
                    height: 65,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.blueGrey),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.store,
                        color: Color(0xFF004691),
                        size: 40,
                      );
                    },
                  ),
                ),
              ),
            ),
            accountName: const Text(
              "URBA Y FLOW S.A.",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, letterSpacing: 1),
            ),
            accountEmail: const Text(
              "Dir: Av. López Mateos 123\nTel: 656-123-4567\nCorreo: contacto@urbayflow.com",
              style: TextStyle(fontSize: 12, color: Colors.white70, height: 1.5),
            ),
            margin: EdgeInsets.zero,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 10),
              children: [
                _buildMenuItem(context, Icons.home_rounded, "Inicio", '/'),
                _buildMenuItem(context, Icons.grid_view_rounded, "Colecciones", '/colecciones'),
                _buildMenuItem(context, Icons.fiber_new_rounded, "Novedades", '/novedades'),
                _buildMenuItem(context, Icons.sell_rounded, "Ofertas Especiales", '/ofertas'),
                _buildMenuItem(context, Icons.shopping_cart_rounded, "Catálogo Productos", '/productos'),
              ],
            ),
          ),
          const Divider(color: Color(0xFF004691), indent: 20, endIndent: 20),
          _buildMenuItem(context, Icons.logout_rounded, "Cerrar Sesión", '/'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String title, String route) {
    bool isSelected = ModalRoute.of(context)?.settings.name == route;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: ListTile(
        leading: Icon(icon, color: isSelected ? Colors.white : const Color(0xFF004691), size: 26),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black87,
          ),
        ),
        tileColor: isSelected ? const Color(0xFF004691) : Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onTap: () {
          Navigator.pop(context);
          if (!isSelected) {
            Navigator.pushNamed(context, route);
          }
        },
      ),
    );
  }
}
