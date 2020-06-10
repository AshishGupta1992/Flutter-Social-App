import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text(
                  'Favorite Contacts',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  letterSpacing: 1,
                ),
              ),
              IconButton(
                icon: Icon(
                    Icons.more_vert),
                iconSize: 30,
                color: Colors.blueGrey,
                onPressed: (){},
              )
            ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
                itemBuilder: (BuildContext context,int index){
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),
                      SizedBox(height: 6,),
                      Text(
                          favorites[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                );
            },
            ),
          ),
        ],
      ),
    );
  }
}
