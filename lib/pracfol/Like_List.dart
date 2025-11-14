import 'package:flutter/material.dart';
import 'package:myapp/pracfol/likes_only_list.dart';
import 'package:provider/provider.dart';
import 'package:myapp/provider/favourite_provider.dart';

class LikeList extends StatelessWidget {
  const LikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items List"),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>LikedOnlyList()));
            },
            child: Icon(Icons.open_in_new,
            color: const Color.fromARGB(255, 109, 104, 104)),
          ),
          SizedBox(width: 20.0,),
        ],
        ),

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
