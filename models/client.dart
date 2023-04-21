import 'compte.dart';

class Client {
    String nom,prenom,tel,email;
    DateTime dateNaiss;
    Compte compte;

    // Client (this.nom,this.prenom,this.tel,this.email,this.dateNaiss,this.compte, {required DateTime dateNaiss});

Client({
    required this.nom,
    required this.prenom,
    required this.tel,
    required this.email,
    required this.dateNaiss,
    required this.compte,
  });

}