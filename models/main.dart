import 'dart:io';
import 'dart:math';

import 'client.dart';
import 'compte.dart';
// import 'compte.dart';
// void main(){
//     // print("hello world!");


// }

void main() {
  int reponse;
  String choix = "oui";
  while(choix == "oui"){
  do {
    AfficherMenu();
    reponse = int.parse(stdin.readLineSync()!);
    
  } while (reponse <1 || reponse>5);
  choixMenu(reponse);
  do {
    print("voulez-vous continuez?(oui/non):");
  choix =stdin.readLineSync()!;
  } while (choix!="oui"|| choix!="non");
  }
}
 
// AfficherMenu();
// print("\nEntrez un nombre entier en fonction de l'action à mener : ou 'q' pour quitter :");
// int reponse =  int.parse(stdin.readLineSync()!);
  
// choixMenu(reponse);
 /*do { 
   
     AfficherMenu();
     print("\nEntrez un nombre entier en fonction de l'action à mener : ou 'q' pour quitter :");
     String? input = stdin.readLineSync()?.trim().toLowerCase();
     int? reponse = int.tryParse(input ?? '');

     choixMenu(reponse);

    if (input == 'q') {
      print('Au revoir !');
      exit(0);
    }
 }while (true);
}*/

AfficherMenu(){

  
  // Compte compte = Compte("23BJUJ",20000,DateTime(2022, 12, 31),TypeCompte.EPARGNE);
  print('--------------- Bienvenue sur KOFBANK ---------------------');
  print('1- Ajouter un client');
  print('2- Liste des clients');
  print('3- Faire un depot');
  print('4- Faire un retrait');
  print("5- Transférer de l'argent\n");

 
}
  // Ajouter le code pour lire l'entrée utilisateur ici


//  print("Entrez un nombre entier en fonction de l'action à mener :");
//   String? input = stdin.readLineSync();

choixMenu(reponse){
  // do { 
  //   print("\nEntrez un nombre entier en fonction de l'action à mener : ou 'q' pour quitter :");
  //   String? input = stdin.readLineSync()?.trim().toLowerCase();
  //   int? choice = int.tryParse(input ?? '');

  //   if (input == 'q') {
  //     print('Au revoir !');
  //     exit(0);
  //   }



  if (reponse == null) {
    print('Vous devez saisir un nombre entre 1 et 5.');
  } else {
    switch (reponse) {
      case 1:
        print('Ajouter un client');
        ajouterclient();
        break;
      case 2:
        print('Liste des clients');
        listClient();
        break;
      case 3:
        print('Faire un dépôt');
        // compte.faireDepot(20000); 
        faireUndepot();      
        break;
      case 4:
        print('Faire un retrait');
        // compte.faireRetrait(5000);
        faireUnretrait();
        break;
      case 5:
        print('Faire un transfert');
        // compte.faireTransfert(compte,20000);
        transfererArgent();
        break;
      default:
        print('Le nombre saisi n\'est pas valide.');
    }
  }
//  }while (true);
}

ajouterclient(){
  print("veuillez donner vos informations");
  print("veuillez donner votre nom :");
  String inputnom = stdin.readLineSync()!;
  print("veuillez donner votre prénom :");
  String inputprenom = stdin.readLineSync()!;
  print("veuillez donner votre numéro de téléphone :");
  String inputtel = stdin.readLineSync()!;
  print("veuillez donner votre adresse email :");
  String inputmail= stdin.readLineSync()!;
  print("veuillez donner votre date de naissance(AAAA-MM--JJ) :");
  var datenaiss = DateTime.parse(stdin.readLineSync()!);
  var numCompte =generateNumCpt(inputnom,inputprenom);
  int typec = int.parse(stdin.readLineSync()!) ;
  TypeCompte type = TypeCompte.values.elementAt(typec-1);
  var compte = Compte(numCompte,0, DateTime.now(), type);
  
  return new Client(
    nom: inputnom,
    prenom: inputprenom,
    tel: inputtel,
    email: inputmail,
    dateNaiss: datenaiss,
    compte: compte,
  );
}

generateNumCpt(nom,prenom){
  return "KOFBANK-" +
      nom[0] +
      prenom[0] +
      "-" +
      Random().nextInt(1000).toString();

}

// demanderTypeCompte(){
//   print("---------Quel type de compte voulez-vous créer ? -------------");
//   print("1 : Epargne\n");
//   print("2 : Courant\n");
//   int type =  int.parse(stdin.readLineSync()!);

// }
listClient(){

}
faireUndepot(){

} 
faireUnretrait(){

} 
transfererArgent(){

}




// bool? confirm(String message) {
//   stdout.write('$message (O/N) ');
//   String? input = stdin.readLineSync()?.toLowerCase();
//   if (input == 'o') {
//     return true;
//   } else if (input == 'n') {
//     return false;
//   } else {
//     return null;
//   }
// }
//   bool? confirmed = confirm('Voulez-vous continuer ?');
//   if (confirmed == true) {
//     print('L\'utilisateur a confirmé.');
//   } else {
//     print('L\'utilisateur a annulé.');
//   }


  



