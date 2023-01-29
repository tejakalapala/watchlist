import 'package:flutter/material.dart';
import 'package:watchlist/contacts_list.dart';


class WatchlistHomeScreen extends StatelessWidget {
  // const WatchlistHomeScreen({super.key});
  // ignore: prefer_typing_uninitialized_variables
  final tabNo;
  const WatchlistHomeScreen({super.key, this.tabNo});
@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      
      // drawer: AppDrawer(),
      body: ContactsList(indexNum: tabNo,),
    );
  }
  
}


  
  

  

  
