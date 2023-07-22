import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: InitPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  final nombres = ["Juan", "Pedro", "Maria", "Jose"];
  List<String> images = [
    "https://images.pexels.com/photos/17551618/pexels-photo-17551618/free-photo-of-amor-verano-jardin-hoja.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/15663496/pexels-photo-15663496/free-photo-of-casas-casa-vehiculo-puerta.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17481616/pexels-photo-17481616/free-photo-of-amor-romantico-hoja-regalo.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17346212/pexels-photo-17346212/free-photo-of-pajaro-animal-bailando-zoo.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/16251652/pexels-photo-16251652/free-photo-of-luces-noche-edificios-faro.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14918480/pexels-photo-14918480.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   nombres[counter],
            //   style: TextStyle(
            //     fontSize: 50,
            //   ),
            // ),
            Expanded(
                child: Image.network(
              images[counter],
              fit: BoxFit.cover,
            )),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (counter == nombres.length - 1) {
                    counter = 0;
                  } else {
                    counter++;
                  }
                });
              },
              child: Text(
                "Incrementar",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (counter == 0) {
                    counter = nombres.length - 1;
                  } else {
                    counter--;
                  }
                });
              },
              child: Text(
                "Decrementar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  double value = 50.0;
  double redValue = 0.0;
  double greenValue = 0.0;
  double blueValue = 0.0;
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Semana 3",
          ),
          centerTitle: false,
        ),
        body: Column(
          children: [
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign: checkValue ? TextAlign.justify : TextAlign.left,
              style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(
                  redValue.toInt(),
                  greenValue.toInt(),
                  blueValue.toInt(),
                  1,
                ),
                decoration:
                    checkValue ? TextDecoration.underline : TextDecoration.none,
              ),
            ),
            Slider(
              value: redValue,
              min: 0,
              max: 255,
              inactiveColor: Colors.black,
              activeColor: Colors.red,
              thumbColor: Colors.red,
              onChanged: (double v) {
                redValue = v;
                setState(() {});
                print(redValue);
              },
            ),
            Slider(
              value: greenValue,
              min: 0,
              max: 255,
              inactiveColor: Colors.black,
              activeColor: Colors.green,
              thumbColor: Colors.green,
              onChanged: (double v) {
                greenValue = v;
                setState(() {});
                print(greenValue);
              },
            ),
            Slider(
              value: blueValue,
              min: 0,
              max: 255,
              inactiveColor: Colors.black,
              activeColor: Colors.blue,
              thumbColor: Colors.blue,
              onChanged: (double v) {
                blueValue = v;
                setState(() {});
                print(blueValue);
              },
            ),
            Checkbox(
              value: checkValue,
              onChanged: (bool? value) {
                checkValue = !checkValue;
                setState(() {});
              },
            ),
            CheckboxListTile(
              value: checkValue,
              title: Text("Titulo"),
              subtitle: Text("Subtitulo"),
              onChanged: (bool? value) {
                checkValue = !checkValue;
                setState(() {});
              },
              checkboxShape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
          ],
        ));
  }
}
