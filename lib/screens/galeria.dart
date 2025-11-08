import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  const Galeria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria de Hackers'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Explorando o Mundo dos Hackers Éticos',
              style: TextStyle(
                color: Color(0xFF90CAF9),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Primeira imagem
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detalhes');
              },
              child: _buildImageCard(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSShS7x2fq4bTFnJWDwqdoWB3CDqh2wZ2vLIQ&s',
                'Red Team - Ataques Éticos',
              ),
            ),

            const SizedBox(height: 20),

            // Segunda imagem
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detalhesdois'); 
              },
              child: _buildImageCard(
                'https://i.pinimg.com/736x/05/f9/2c/05f92c28697378e07cf327d720f2322a.jpg',
                'Blue Team - Defesa Cibernética',
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Essas imagens representam o universo hacker — '
              'onde conhecimento, ética e curiosidade andam lado a lado.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Função auxiliar para construir os cards com imagem e título
  Widget _buildImageCard(String imageUrl, String title) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: 200,
                color: Colors.black26,
                child: const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF90CAF9),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
