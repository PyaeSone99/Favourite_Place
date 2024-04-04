import 'package:favourite_places/providers/user_places.dart';
import 'package:favourite_places/screens/add_place.dart';
import 'package:favourite_places/screens/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);
    
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
      body: PlacesList(placesList: userPlaces,)
    );
  }
}