import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuriApp Megasena',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Megasena'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String jogo1 = "01-02-03-04-05-06";
  String jogo2 = "07-08-09-10-11-12";
  String jogo3 = "13-14-15-16-17-18";
  String jogo4 = "19-20-21-22-23-24";
  String jogo5 = "25-26-27-28-29-30";
  String jogo6 = "31-32-33-34-35-36";
  String jogo7 = "37-38-39-40-41-42";
  String jogo8 = "43-44-45-46-47-48";
  String jogo9 = "49-50-51-52-53-54";
  String jogo10 = "55-56-57-58-59-60";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
          child: ListView(
            children: <Widget>[
              FlatButton(
                color: Colors.green,
                padding: EdgeInsets.all(4.0),
                onPressed: shuffle,
                child: Text(
                  "Embaralhar números",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              myCard(1, jogo1),
              myCard(2, jogo2),
              myCard(3, jogo3),
              myCard(4, jogo4),
              myCard(5, jogo5),
              myCard(6, jogo6),
              myCard(7, jogo7),
              myCard(8, jogo8),
              myCard(9, jogo9),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: myCard(10, jogo10),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.delete,size: 16.0,color: Colors.green,),
                Text('Deslize para apagar algum jogo...',
                  style: TextStyle(color: Colors.green, fontSize: 12.0),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        isExtended: true,
        tooltip: 'Salvar Jogo',
        child: const Icon(Icons.save),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Widget myCard(int numeroJogo, String jogo) {
    return Card(
      child: ListTile(
        leading: Text(
          numeroJogo.toString(),
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24.0,
          ),
        ),
        title: Center(
          child: myShapeRow(jogo),
        ),
      ),
    );
  }

  Widget myShapeRow(String numeros) {
    var array = numeros.split("-");
    return Row(
      children: <Widget>[
        myShapeNumber(array[0]),
        myShapeNumber(array[1]),
        myShapeNumber(array[2]),
        myShapeNumber(array[3]),
        myShapeNumber(array[4]),
        myShapeNumber(array[5]),
      ],
    );
  }

  Widget myShapeNumber(String numero) {
    return Animator(
      tweenMap: {
        "opacity": Tween<double>(begin: 0, end: 1),
        "translation": Tween<Offset>(begin: Offset.zero, end: Offset(1, 0)),
        "rotation": Tween<double>(begin: 4 * pi, end: 0),
      },
      duration: Duration(milliseconds: 800),
      cycles: 0,
      repeats: 1,
      resetAnimationOnRebuild: true,
      builderMap: (a) => FadeTransition(
        opacity: a["opacity"],
        child: FractionalTranslation(
          translation: a["translation"].value,
          child: Transform.rotate(
            angle: a["rotation"].value,
            child: Container(
              child: Center(
                child: Text(
                  numero,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              width: 25.0,
              height: 25.0,
              decoration: new BoxDecoration(
                  color: Colors.green, shape: BoxShape.circle),
            ),
          ),
        ),
      ),
    );
  }

  void shuffle() {
    List<int> nros = new List<int>();
    //Adiciona 60
    for (var i = 0; i < 60; i++) {
      nros.add(i + 1);
    }
    //Embaralha
    for (var i = 0; i < 60; i++) {
      int aux = nros[i];
      int rnd = new Random().nextInt(60);
      nros[i] = nros[rnd];
      nros[rnd] = aux;
    }

    sortSublist(nros, 0, 6);
    sortSublist(nros, 6, 12);
    sortSublist(nros, 12, 18);
    sortSublist(nros, 18, 24);
    sortSublist(nros, 24, 30);
    sortSublist(nros, 30, 36);
    sortSublist(nros, 36, 42);
    sortSublist(nros, 42, 48);
    sortSublist(nros, 48, 54);
    sortSublist(nros, 54, 60);

    setState(() {
      jogo1 = nros.sublist(0, 6).join("-");
      jogo2 = nros.sublist(6, 12).join("-");
      jogo3 = nros.sublist(12, 18).join("-");
      jogo4 = nros.sublist(18, 24).join("-");
      jogo5 = nros.sublist(24, 30).join("-");
      jogo6 = nros.sublist(30, 36).join("-");
      jogo7 = nros.sublist(36, 42).join("-");
      jogo8 = nros.sublist(42, 48).join("-");
      jogo9 = nros.sublist(48, 54).join("-");
      jogo10 = nros.sublist(54, 60).join("-");
    });
  }

  void sortSublist<T>(List<T> list, int start, int end) {
    list.setRange(start, end, list.sublist(start, end)..sort());
  }
}
