import 'dart:ffi';

main(){
  int a = 3;
  double b = 3.1;
  bool estaChovendo = true;
  bool estaFrio = false;
  var c = 'Vc é muitoi legal';
  print(c is String);

  print(estaFrio || estaChovendo);

  print('');
  print('Listas:'); //Listas:
  print('');

  var nomes = ['Ana', 'Bia', 'Carlos'];

  nomes.add('Daniel');
  nomes.add('Daniel');
  nomes.add('Daniel');
  
  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[0]);

  print('');
  print('Conjunto:'); //Conjunto:
  print('');

  var conjunto = {0, 1, 2, 3, 4, 4, 4, 4};

  print(conjunto.length);
  print(conjunto is Set);

  print('');
  print('Map:'); //Map:
  print('');

  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 10.0,
  };

  for(var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }

  print('');

  for(var valor in notasDosAlunos.values) {
    print('valor = $valor');
  }

  print('');

  for(var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  print('');
  print('Dynamic:'); //Dynamic:
  print('');

  dynamic x = 'Teste';
  x = 123;
  x = false;

  print(x);

  print('');
  print('Funções:'); //Funções:
  print('');

  teste(1, 2);

  exec(1, 2, teste);

  print('');
  print('Classe:'); //Classe:
  print('');

  // var prod1 = Produto('prod1', 10.0); //Não funciona quando utilizado o construtor não posicional
  var prod2 = Produto(preco:8.0, nome: 'prod2');
}

teste(a, b) {
  print(a + b);
}

exec(a, b, void Function(dynamic, dynamic) f) {
  f(a, b);
}

class Produto {
  late String nome;
  late double preco;

  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }
  // Produto(this.nome, this.preco);//funciona igual o codigo acima, além de ser um construtor com paramentros posicionais(respeita a ordem)
  Produto({required this.nome, this.preco = 0.0});//funciona semelhante o codigo acima, só que é construtor com paramentros não posicionais(não respeita a ordem)
}