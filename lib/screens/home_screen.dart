import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    const tamano30 = TextStyle(fontSize: 30 );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Número de clics', style: tamano30),
              Text('$contador', style: tamano30),
            ],
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              //child: const Icon( Icons.add ),
              child: const Text('-1'),
              onPressed: () { 
                print('Pulsación -1 registrada'); 
                contador--;
                print('$contador');
                setState(() {
                  
                });
              },
            ),

            const SizedBox( width: 20), // 20 unidades de ancho

            FloatingActionButton(
              //child: const Icon( Icons.add ),
              child: const Text('0'),
              onPressed: () { 
                print('Pulsación 0 registrada'); 
                contador = 0;
                print('$contador');
                setState(() {
                  
                });
              },
            ),
            
            const SizedBox( width: 20), // 20 unidades de ancho

            FloatingActionButton(
              //child: const Icon( Icons.add ),
              child: const Text('+1'),
              onPressed: () { 
                print('Pulsación +1 registrada'); 
                contador++;
                print('$contador');
                setState(() {
                  
                });
              },
            ),
          ],
        ),
    );
  }
}