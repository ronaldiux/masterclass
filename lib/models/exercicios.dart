import 'dart:convert';

List<Atividade> cidadeFromJson(String str) =>
    List<Atividade>.from(json.decode(str).map((x) => Atividade.fromJson(x)));

class Atividade {
  Atividade({
    required this.id,
    required this.titulo,
    required this.quantidadeexercicios,
    required this.github,
  });

  int id;
  String titulo;
  String github;
  int quantidadeexercicios;

  factory Atividade.fromJson(Map<String, dynamic> json) => Atividade(
        id: json["id"],
        github: json["github"],
        quantidadeexercicios: json["quantidadeexercicios"],
        titulo: json["titulo"],
      );
}
