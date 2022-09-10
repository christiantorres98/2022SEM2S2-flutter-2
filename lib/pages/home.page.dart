import 'package:flutter/material.dart';
import 'package:noticias/pages/detail.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int peso = 0;
  int edad = 0;
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
                                  peso--;
                                });
                              },
                              icon: Icon(Icons.remove_circle),
                              iconSize: 40,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  peso++;
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
                                  edad--;
                                });
                              },
                              icon: Icon(Icons.remove_circle),
                              iconSize: 40,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  edad++;
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
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => DetailPage())));
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
