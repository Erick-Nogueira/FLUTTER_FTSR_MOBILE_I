import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hacker Ético'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bem-vindo ao Mundo Hacker Ético',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: const Color(0xFF90CAF9),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Text(
                'Ser um hacker ético é entender a tecnologia para protegê-la. '
                'Usar o conhecimento para fortalecer sistemas, descobrir falhas '
                'e tornar o mundo digital mais seguro.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Este aplicativo é um espaço de aprendizado, curiosidade e evolução. '
                'Aqui você explora ideias, conceitos e desafios do universo '
                'da cibersegurança e da programação.',
                style: TextStyle(
                  color: Color(0xFFB0BEC5),
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
