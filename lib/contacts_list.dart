import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchlist/contact_item.dart';
import 'package:watchlist/providers/contacts.dart';

class ContactsList extends StatelessWidget {
  // const ContactsList({super.key});
  // ignore: prefer_typing_uninitialized_variables
  final indexNum;
  const ContactsList({super.key, this.indexNum});
  @override
  Widget build(BuildContext context) {
    final contactsData = Provider.of<Contacts>(context);
    final contacts = contactsData.items;
    final finalList = contacts.sublist(indexNum * 20,(indexNum + 1)* 20);
    return ListView.builder(
      itemCount: 20,
      padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
      
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: finalList[index],
        child: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: ContactItem(),
        ),
        
      ),
    );

  }
}