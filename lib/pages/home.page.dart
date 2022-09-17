import 'dart:math';

import 'package:flutter/material.dart';
import 'package:noticias/pages/detail.page.dart';
import 'package:noticias/widgets/slider.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int peso = 76;
  int edad = 10;
  double estatura = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora IMC")),
      body: Column(children: [
        Expanded(
            child: Container(
          color: Color.fromRGBO(9, 14, 33, 0),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.man,
                        size: 100,
                      ),
                      Text("Hombre")
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(29, 30, 51, 225),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.woman,
                        size: 100,
                      ),
                      Text("Mujer")
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(29, 30, 51, 225),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
            ],
          ),
        )),
        Expanded(
            child: Container(
          color: Color.fromARGB(9, 14, 33, 225),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(29, 30, 51, 225),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Estatura")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          estatura.toInt().toString(),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text("cm")
                      ],
                    ),
                    Slider(
                      value: estatura,
                      min: 50,
                      max: 250,
                      thumbColor: Colors.pink,
                      activeColor: Colors.white,
                      label: estatura.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          estatura = value;
                        });
                      },
                    ),
                  ]),
            ),
          ),
        )),
        Expanded(
            child: Container(
          color: Color.fromRGBO(9, 14, 33, 0),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Peso"),
                        Text(
                          peso.toString(),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (peso > 50) {
                                    peso--;
                                  }
                                });
                              },
                              icon: Icon(Icons.remove_circle),
                              iconSize: 40,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (peso < 500) {
                                    peso++;
                                  }
                                });
                              },
                              icon: Icon(Icons.add_circle),
                              iconSize: 40,
                            ),
                          ],
                        )
                      ]),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(29, 30, 51, 225),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Edad"),
                        Text(
                          edad.toString(),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (edad > 10) {
                                    edad--;
                                  }
                                });
                              },
                              icon: Icon(Icons.remove_circle),
                              iconSize: 40,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (edad < 120) {
                                    edad++;
                                  }
                                });
                              },
                              icon: Icon(Icons.add_circle),
                              iconSize: 40,
                            ),
                          ],
                        )
                      ]),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(29, 30, 51, 225),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
            ],
          ),
        )),
        GestureDetector(
          onTap: (() {
            String estado = "";
            Color colorEstado = Colors.black;
            double imc = (peso / ((estatura / 100) * (estatura / 100)));
            if (imc < 18.5) {
              estado = "Bajo peso";
              colorEstado = Color.fromARGB(255, 255, 170, 42);
            }
            if (imc >= 18.5 && imc < 24.9) {
              estado = "Normal";
              colorEstado = Colors.green;
            }
            if (imc >= 25 && imc < 29.9) {
              estado = "Sobrepreso";
              colorEstado = Color.fromARGB(255, 231, 138, 16);
            }
            if (imc >= 30 && imc < 34.9) {
              estado = "Obesidad I";
              colorEstado = Color.fromARGB(255, 255, 17, 0);
            }
            if (imc >= 35 && imc < 39.9) {
              estado = "Obesidad II";
              colorEstado = Color.fromARGB(172, 255, 17, 0);
            }
            if (imc >= 40 && imc < 49.9) {
              estado = "Obesidad III";
              colorEstado = Color.fromARGB(188, 181, 31, 20);
            }
            if (imc >= 50) {
              estado = "Obesidad IV";
              colorEstado = Color.fromARGB(166, 127, 12, 4);
            }
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => DetailPage(
                          valor: imc,
                          estado: estado,
                          colorEstado: colorEstado,
                        ))));
          }),
          child: Container(
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
        )
      ]),
    );
  }
}
