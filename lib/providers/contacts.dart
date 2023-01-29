import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../models/contact.dart';

class Contacts with ChangeNotifier {

List<Contact> _items = [
  
];

  

  

List<Contact> get items {
    return [..._items];
  }
  
  Future<void> fetchAndSetContacts() async{
    var url = Uri.parse("http://5e53a76a31b9970014cf7c8c.mockapi.io/msf/getContacts");
    try{
    final response = await http.get(url);
    print(json.decode(response.body));
    final extractedData = json.decode(response.body) as List<dynamic>;
    final List<Contact> loadedContacts = [];
    for (var contactData in extractedData) {
      loadedContacts.add(Contact(id: contactData['id'], 
      number: contactData['Contacts'],
      name: contactData['name'],
      img: contactData['url']
      ));
    }
    _items = loadedContacts;
    notifyListeners();
    }catch(error){
      rethrow;
    }
  }
}



