import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

           //Esto crea y PROVEE el estado a toda la app
    return ChangeNotifierProvider(
      //Crea un contexto para toda al app (para todos los widgets que se usan dentro de esta clase?)
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage()
        
      ),
    );
  }
}
                        
//Define los datos que la app necesita para funcionar
class MyAppState extends ChangeNotifier {
                        //Clase que maneja el estado.
                        //Esta clase en particular permite que si cambia el estado de los elementos de esta clase, se le sea notificado a otros widgets que un cambio sucedió.

  //Por ahora sólo necesita esta variable
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}


class EstadoApp extends ChangeNotifier {
  int numero = 0;

}


class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    //Observa cambios en el estado
    var observacion = context.watch<EstadoApp>();

    return Scaffold(
      body: Column(),
    );
  }















}

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea zzz:'),
          Text(appState.current.asPascalCase),
        


          ElevatedButton(
            onPressed: () {
              appState.getNext();
            },
            child: Text("Next"),
          ),

        ],
      ),
    );
  }
}
*/






