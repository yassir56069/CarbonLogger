import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Détails du Projet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProjectDetailsPage(),
    );
  }
}

class ProjectDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouveau Projet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Titre:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Entrez le titre du projet',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Client:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Entrez le nom du client',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Adresse:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Entrez l\'adresse du projet',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Firm Google:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Entrez le nom de la firme Google',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Description:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Entrez la description du projet',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
