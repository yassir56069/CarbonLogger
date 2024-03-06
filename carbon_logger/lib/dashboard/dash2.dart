// pages/dashboard.dart

import 'package:flutter/material.dart';

class CarbonFootprintDashboard extends StatefulWidget {
  const CarbonFootprintDashboard({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  _CarbonFootprintDashboardState createState() =>
      _CarbonFootprintDashboardState();
}

class _CarbonFootprintDashboardState extends State<CarbonFootprintDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          // Bouton "Add material" en haut à droite de la barre d'applications
          IconButton(
            onPressed: () {
              // Ajoutez ici la logique pour ajouter un nouveau matériau
              // Cette fonction sera exécutée lorsque le bouton sera pressé
            },
            icon: Icon(Icons.add),
            tooltip:
                'Add material', // Texte du tooltip défini comme "Add material"
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Votre contenu ici',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
