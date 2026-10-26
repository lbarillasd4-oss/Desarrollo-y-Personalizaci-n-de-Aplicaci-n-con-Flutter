
import 'package:flutter/material.dart';

void main() {
  runApp(const MiCampusApp());
}

class MiCampusApp extends StatelessWidget {
  const MiCampusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Campus',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3B82F6),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF0B1020),
        fontFamily: 'Arial',
      ),
      home: const InicioCampus(),
    );
  }
}

class InicioCampus extends StatelessWidget {
  const InicioCampus({super.key});

  void mostrarMensaje(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF151F35),
        icon: const Text('🦇', style: TextStyle(fontSize: 45)),
        title: const Text(
          '¡Bienvenido a Mi Campus!',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFF93C5FD)),
        ),
        content: const Text(
          'Organiza tus tareas, estudia a tu ritmo '
          'y sigue avanzando hacia tus metas. '
          '¡Tú puedes lograrlo!',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('¡Vamos a estudiar!'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF111827),
        foregroundColor: const Color(0xFF93C5FD),
        centerTitle: true,
        title: const Text(
          '🦇 Mi Campus',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '🦇',
                style: TextStyle(fontSize: 82),
              ),
              const SizedBox(height: 12),
              const Text(
                '¡Bienvenido a Mi Campus!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF93C5FD),
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                'Tu espacio universitario para organizar '
                'tus tareas y alcanzar tus metas.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFFCBD5E1),
                ),
              ),
              const SizedBox(height: 28),
              Card(
                color: const Color(0xFF151F35),
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.menu_book_rounded,
                        size: 52,
                        color: Color(0xFF60A5FA),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Mi espacio de estudio',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Mis tareas, mis metas y mi futuro.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFCBD5E1),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFF60A5FA),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Organiza tu tiempo',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 22),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () => mostrarMensaje(context),
                          icon: const Text('🦇'),
                          label: const Text('Conocer mi campus'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2563EB),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            textStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Estudia en la oscuridad, brilla con tus resultados. 🦇',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF93C5FD),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
