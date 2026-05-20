import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String _mensagem = '';

  void _atualizarMensagem(String msg) {
    setState(() {
      _mensagem = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Ícones'),
      ),
      body: ListView(
        children: [
          if (_mensagem.isNotEmpty)
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green),
              ),
              child: Text(
                _mensagem,
                style: const TextStyle(fontSize: 16, color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
          CardIcone(
            icone: Icons.person,
            titulo: 'Perfil',
            descricao: 'Veja e edite suas informações pessoais.',
            textoBotao: 'Acessar',
            cor: Colors.blue,
            onBotaoPressed: () => _atualizarMensagem('Você clicou em Perfil'),
          ),
          CardIcone(
            icone: Icons.settings,
            titulo: 'Configurações',
            descricao: 'Ajuste as preferências do aplicativo.',
            textoBotao: 'Configurar',
            cor: Colors.grey.shade700,
            onBotaoPressed: () => _atualizarMensagem('Você clicou em Configurações'),
          ),
          CardIcone(
            icone: Icons.favorite,
            titulo: 'Favoritos',
            descricao: 'Acesse seus itens favoritos.',
            textoBotao: 'Ver Favoritos',
            cor: Colors.red,
            onBotaoPressed: () => _atualizarMensagem('Você clicou em Favoritos'),
          ),
          CardIcone(
            icone: Icons.notifications,
            titulo: 'Notificações',
            descricao: 'Veja suas notificações recentes.',
            textoBotao: 'Ver Notificações',
            cor: Colors.orange,
            onBotaoPressed: () => _atualizarMensagem('Você clicou em Notificações'),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'oi',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _atualizarMensagem('FloatingActionButton pressionado!'),
        tooltip: 'Ação',
        child: const Icon(Icons.add),
      ),
    );
  }
}
