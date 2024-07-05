import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CuentaGooglePage(),
  ));
}

class CuentaGooglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta de Google'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              context,
              title: 'Tu cuenta está protegida',
              description:
                  'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
              actionText: 'Ver detalles',
              icon: Icons.check_circle,
              iconColor: Colors.green,
              onPressed: () {},
            ),
            _buildSection(
              context,
              title: 'Verificación de privacidad',
              description:
                  'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
              actionText: 'Realizar la Verificación de privacidad',
              icon: Icons.privacy_tip,
              iconColor: Colors.blue,
              onPressed: () {},
            ),
            Divider(),
            _buildOption(
              context,
              icon: Icons.search,
              title: 'Buscar en la Cuenta de Google',
              onTap: () {},
            ),
            _buildOption(
              context,
              icon: Icons.help,
              title: 'Ver las opciones de ayuda',
              onTap: () {},
            ),
            _buildOption(
              context,
              icon: Icons.feedback,
              title: 'Enviar comentarios',
              onTap: () {},
            ),
            SizedBox(height: 20),
            Text(
              'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos.',
              style: TextStyle(fontSize: 12),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Más información',
                style: TextStyle(fontSize: 12, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required String description,
    required String actionText,
    required IconData icon,
    required Color iconColor,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 40),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(description),
                TextButton(
                  onPressed: onPressed,
                  child: Text(actionText, style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
