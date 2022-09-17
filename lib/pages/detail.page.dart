import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage(
      {super.key,
      required this.valor,
      required this.estado,
      required this.colorEstado});

  double valor;
  String estado;
  Color colorEstado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado del calculo"),
      ),
      body: (Column(
        children: [
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 15),
                  child: Text("Resultado",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Color.fromARGB(9, 14, 33, 225),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(29, 30, 51, 225),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              estado,
                              style: TextStyle(
                                  color: colorEstado,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            valor.toStringAsFixed(1),
                            style: TextStyle(
                                fontSize: 90, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tiene un peso corporal:",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          )),
          Container(
            height: 70,
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Calcular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
