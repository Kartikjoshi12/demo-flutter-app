import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/provider/favourite_provider.dart';
class LikedOnlyList extends StatefulWidget {
  const LikedOnlyList({super.key});

  @override
  State<LikedOnlyList> createState() => _LikedOnlyListState();
}

class _LikedOnlyListState extends State<LikedOnlyList> {
  @override
  Widget build(BuildContext context) {
    final favcountlist = Provider.of<FavouriteValueprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Liked Items"),
        ),

      body: ListView.builder(

        itemCount:favcountlist.selected.length,

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