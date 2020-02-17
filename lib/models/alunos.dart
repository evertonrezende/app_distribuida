class Alunos{
  String nome;
  bool ativo;

  Alunos({this.nome, this.ativo}); //faz a instancia dos objetos

  Alunos.fromJSON(Map<String, dynamic>json){
    nome = json['nome'];
    ativo = json['ativo'];
  }


  

}