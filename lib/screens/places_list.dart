import 'package:favourite_places/models/places.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key,required this.placesList});

  final List<Place> placesList;

  @override
  Widget build(BuildContext context) {

    if (placesList.isEmpty) {
      return Center(
        child: Text(
          'No Places Added Yet!',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground
          ),
        ),
      );
    }

    return ListView.builder(
        itemCount: placesList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            placesList[index].title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
      );
  }
}


