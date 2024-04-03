import 'package:favourite_places/screens/add_place.dart';
import 'package:favourite_places/screens/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  

  @override
  Widget build(BuildContext context) {

    void addPlace() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: 
        (context) => const AddPlaceScreen(),
      )
    );
  }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [IconButton(
          onPressed: addPlace, 
          icon: const Icon(Icons.add)
          )
        ],
      ),
      body: const PlacesList(placesList: [],)
    );
  }
}