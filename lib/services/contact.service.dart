import 'package:voyage1/model/contact.model.dart';
import 'package:voyage1/utils/contact.database.dart';

class ContactService {
  ContactDatabase contactDatabase = ContactDatabase();

  Future<List<Contact>> ListeContacts() async {
    var contacts = await contactDatabase.recuperer();
    return contacts.map((item) => Contact.fromJson(item)).toList();
  }

  Future<bool> ajouterContact(Contact c) async {
    int res = await contactDatabase.inserer(c);
    return res > 0 ? true : false ;
  }

  Future<bool> modifierContact(Contact c) async {
    int res = await contactDatabase.inserer(c);
    return res > 0 ? true : false ;
  }

  Future<bool> supprimerContact(Contact c) async {
    int res = await contactDatabase.inserer(c);
    return res > 0 ? true : false ;
  }
}