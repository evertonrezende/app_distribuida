import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //retira a mensagem de debug no campo superir direito
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.blueGrey, 
      ),
      home: RandomWords(),
    );
  }
  // #enddocregion build
}
// #enddocregion MyApp

// #docregion RWS-var
class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _salva = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  // #enddocregion RWS-var

  // #docregion _buildSuggestions
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }
  // #enddocregion _buildSuggestions

  // #docregion _buildRow
  Widget _buildRow(WordPair pair) {  //gera a lista do List View, a cada linha qe for gerado ele irá criar o objeto com a estrutura abaixo 
    final estaSalva = _salva.contains(pair); //verifica se existe a palavra que estou querendo adicionar.
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
        
      ),
      trailing:Icon(
        //Icons.favorite,
        estaSalva ? Icons.favorite : Icons.favorite_border,
        color: estaSalva ? Colors.blue : null,
        ),
        onTap:() { //verifica o clique 
          setState((){ //inicia uma nova verificação ou um novo estado
            if(estaSalva){
              _salva.remove(pair);
            }else{
              _salva.add(pair);
            }
        } 
          
        );
      }
    );
  }
  // #enddocregion _buildRow

  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicações Distribuídas'),
        actions:<Widget> [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: _chamarTela,//ação do botao
          ),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

void _chamarTela() {
  Navigator.of(context).push(MaterialPageRoute(builder:(context){
        final lista = _salva.map((pair){
          return ListTile(
            title: Text(
              pair.asPascalCase,
              style: _biggerFont,

            ),
          );
        });
//Separador de linha dentro do ListView
        final divisor = ListTile.divideTiles(context: context, tiles: lista).toList();
       
        return Scaffold(
           appBar: AppBar(
           title: Text('Lista de Favoritos'),
           
          ),
          body: ListView(
            children: divisor
          ),
          );

      }));
  }
}
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
