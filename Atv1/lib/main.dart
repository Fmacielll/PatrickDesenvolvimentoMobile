import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // p tirar aquela faixa de debug
    home: TelaResultado(),
  ));
}

class TelaEscolha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra, Papel, Tesoura", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        width: double.infinity,
        child: Column( // empilhar o titulo, a imagem do robo e as opções de mao
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do APP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset("images/padrao.png", height: 120),
            Padding(
              padding: EdgeInsets.only(top: 80, bottom: 20),
              child: Text("Escolha uma opção abaixo", style: TextStyle(fontSize: 18)),
            ),
            Row( //dx tudo em horizontal
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _itemOpcao("images/pedra.png"),
                _itemOpcao("images/papel.png"),
                _itemOpcao("images/tesoura.png"), // para dx tudo em horizontal
              ], // busca as imagens do pubspec.yaml
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemOpcao(String caminho) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,// aq o fundo é um circulo perfeito
        border: Border.all(color: Colors.grey[300]!, width: 2), //Borderal =boridnha cinza ........ 300 define tom de cinza claro......  e with 2 espessura da linha
      ),
      child: CircleAvatar(
        radius: 40, //circulo branco interno
        backgroundColor: Colors.white,
        child: Image.asset(caminho, height: 60), //tamanho da imagem da mão dentro do circulo
      ),
    );
  }
}


class TelaResultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra, Papel, Tesoura", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text("Escolha do APP", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Image.asset("images/papel.png", height: 120),

            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Text("Sua Escolha", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            _itemSelecionado("images/pedra.png"),

            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Image.asset("images/icons8-perder-48.png", height: 80),
            ),

            Text(
              "Você Perdeu!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),

            Padding(
              padding: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                onPressed: () {},
                child: Text(
                  "Jogar novamente",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemSelecionado(String caminho) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey[300]!, width: 2),
      ),
      child: CircleAvatar(
        radius: 45,
        backgroundColor: Colors.white,
        child: Image.asset(caminho, height: 65),
      ),
    );
  }
}