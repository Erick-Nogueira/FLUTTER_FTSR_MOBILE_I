import 'package:flutter/material.dart';

class Detalhesdois extends StatelessWidget {
  const Detalhesdois({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Blue Team'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.security_rounded,
                size: 100,
                color: Color(0xFF64B5F6),
              ),
              const SizedBox(height: 20),
              Text(
                'O que é Blue Team?',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: const Color(0xFF64B5F6),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'O Blue Team é responsável por defender sistemas e redes contra ataques. '
                'Eles monitoram, analisam e respondem a ameaças em tempo real, '
                'garantindo a segurança e resiliência das organizações.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1565C0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Voltar',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
