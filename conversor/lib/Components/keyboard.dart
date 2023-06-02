import 'package:conversor/Controller/controller.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyboardConversor extends StatefulWidget {
  const KeyboardConversor({super.key});

  @override
  State<KeyboardConversor> createState() => _KeyboardConversorState();
}

class _KeyboardConversorState extends State<KeyboardConversor> {
  final Controller controller = Controller();

  _adicionarValor(String valor) {
    setState(() {
      controller.adicionarDigito(valor);
    });
  }

  _converter() {
    setState(() {
      controller.converter();
    });
  }

  _limpar() {
    setState(() {
      controller.limpar();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple,
                    ),
                    alignment: Alignment.center,
                    width: 100,
                    height: 60,
                    child: Text(
                      "${controller.valorEntrada}°F",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Text("="),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple,
                    ),
                    alignment: Alignment.center,
                    width: 100,
                    height: 60,
                    child: Text(
                      "${controller.valorSaida}°C",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ElevatedButton(
                    child: Text("1", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_adicionarValor("1")}),
              ),
              Card(
                child: ElevatedButton(
                    child: Text("2", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_adicionarValor("2")}),
              ),
              Card(
                child: ElevatedButton(
                    child: Text("3", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_adicionarValor("3")}),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ElevatedButton(
                    child: Text("4", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_adicionarValor("4")}),
              ),
              Card(
                child: ElevatedButton(
                    child: Text("5", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_adicionarValor("5")}),
              ),
              Card(
                child: ElevatedButton(
                    child: Text("6", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_adicionarValor("6")}),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ElevatedButton(
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () => {_adicionarValor("7")}),
              ),
              Card(
                child: ElevatedButton(
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () => {_adicionarValor("8")}),
              ),
              Card(
                child: ElevatedButton(
                    child: Text("9", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_adicionarValor("9")}),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ElevatedButton(
                  child: Text("0", style: TextStyle(fontSize: 30)),
                  onPressed: () => {_adicionarValor("0")},
                ),
              ),
              Card(
                child: ElevatedButton(
                    child: Text("=", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_converter()}),
              ),
              Card(
                child: ElevatedButton(
                    child: Text("C", style: TextStyle(fontSize: 30)),
                    onPressed: () => {_limpar()}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
