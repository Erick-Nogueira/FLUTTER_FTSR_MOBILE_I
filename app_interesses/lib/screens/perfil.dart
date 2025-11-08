import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Perfil Hacker'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // foto de perfil 
            
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D4D03AQF8U_P9YQvOtQ/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1694653374731?e=1764201600&v=beta&t=-qC31C_LBoD1qiSys-iGCxU1DIy4fZ4PzdMYZ5cwxlE',
              ),
            ),

            const SizedBox(height: 20),

           
            Text(
              'Erick Williams',
              style: theme.textTheme.titleLarge?.copyWith(
                color: const Color(0xFF90CAF9),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Hacker Ético | Cyber Security Enthusiast',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            const SizedBox(height: 20),

            // BIO
            const Text(
              'Apaixonado por segurança da informação e tecnologia. '
              'Acredito que entender o sistema é o primeiro passo para protegê-lo. '
              'Explorando vulnerabilidades para construir um ambiente digital mais seguro.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // cards de infomarção
            _buildInfoCard(
              icon: Icons.terminal,
              title: 'Especialidades',
              description: 'Pentest, Engenharia Social.',
            ),
            const SizedBox(height: 20),

            _buildInfoCard(
              icon: Icons.security,
              title: 'Missão',
              description:
                  'Usar o conhecimento hacker para proteger sistemas e educar novos profissionais da segurança digital.',
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  //cards personalizados
  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E2E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF90CAF9), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFF90CAF9), size: 32),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF90CAF9),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
