import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

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
        floatingActionButton: CustomFloatingActionButton(incrementarFn: incrementar),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {

  final Function incrementarFn;

  const CustomFloatingActionButton({
    super.key, required this.incrementarFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          //child: const Icon( Icons.add ),
          backgroundColor: Colors.blue,
          child: const Text('-1', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
          onPressed:null
        ),
    
        //const SizedBox( width: 20), // 20 unidades de ancho
    
        FloatingActionButton(
          //child: const Icon( Icons.add ),
          backgroundColor: Colors.blue,
          child: const Text('0', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
          onPressed:null
        ),
        
        //const SizedBox( width: 20), // 20 unidades de ancho
    
        FloatingActionButton(
          //child: const Icon( Icons.add ),
          backgroundColor: Colors.blue,
          child: const Text('+1', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
          onPressed: () => incrementarFn()
        ),
      ],
    );
  }
}