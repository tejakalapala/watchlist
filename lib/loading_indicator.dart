import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchlist/providers/contacts.dart';
import 'package:watchlist/tabs_screen.dart';

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator({super.key});

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> {
  var _isInit = true;
  


  @override
  void didChangeDependencies() {
    
    
    if(_isInit && mounted){
      Provider.of<Contacts>(context).fetchAndSetContacts().then((_){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (builder){
                return const TabsScreen();
              }), (route) => false);
       
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: const Center(child: CircularProgressIndicator(),),
    );
  }
}