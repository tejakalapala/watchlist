import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchlist/models/contact.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key});

  @override
  Widget build(BuildContext context) {
    final contact = Provider.of<Contact>(context,listen: false);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: SizedBox(
        
        height: 90,
        child: ListTile(
          
          title: Padding(
            padding: const EdgeInsets.only(top:10.0,bottom:25.0),
            child: Text(contact.name,style: const TextStyle(fontSize:20.0 ),),
          ),
          subtitle: 
          // Padding(
            // padding: const EdgeInsets.only(top:18.0),
            // child: 
            Text(contact.number),
          // ),
          trailing: FadeInImage(
        image: NetworkImage(contact.img),
        placeholder: const AssetImage(
            "assets/images/placeholder_image.png"),
        imageErrorBuilder:
            (context, error, stackTrace) {
          return Image.asset(
              'assets/images/placeholder_image.png',
              fit: BoxFit.fitWidth);
        },
        fit: BoxFit.fitWidth,
    )
        ),
      ),
    );
  }
}