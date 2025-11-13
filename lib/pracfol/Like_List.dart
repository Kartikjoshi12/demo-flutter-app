import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/provider/favourite_provider.dart';

class LikeList extends StatelessWidget {
  const LikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liked Items")),

      body: ListView.builder(

        itemCount: 100,

        itemBuilder: (context, index) {

          return Consumer<FavouriteValueprovider>(

            builder: (context, provider, child) {
              final isSelected = provider.selected.contains(index);

              return ListTile(
                onTap: () {
                  provider.isiteamselected(index);
                },
                title: Text('Item ${index}'),
                trailing: Icon(
                  isSelected ? Icons.favorite : Icons.favorite_border,
                  color: isSelected ? Colors.red : null,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
