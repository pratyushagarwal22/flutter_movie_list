import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int items = 10;

    return SliverToBoxAdapter(
      child: Container(
        height: size.height/1.75,
        margin: EdgeInsets.only(top: 5),
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
                child: ListTile(
                  onTap: () {},
                  title: Text('Movie ${index+1}'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
