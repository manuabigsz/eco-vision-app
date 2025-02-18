class UserModel {
  final String id;
  String nome;
  final String email;
  String logo;
  final String uid;
  final String dataCadastro;

  UserModel({
    required this.id,
    required this.nome,
    required this.email,
    required this.logo,
    required this.uid,
    required this.dataCadastro,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'logo': logo,
      'uid': uid,
      'data_cadastro': dataCadastro,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      nome: json['nome'],
      email: json['email'],
      logo: json['logo'],
      uid: json['uid'],
      dataCadastro: json['data_cadastro'],
    );
  }
}
