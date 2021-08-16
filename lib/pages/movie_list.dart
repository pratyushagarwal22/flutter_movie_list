import 'package:flutter/material.dart';
import 'package:flutter_movie_list/pages/movie_parameters.dart';
import 'movie_parameters.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {

  List<MovieParameters> movies = [
    MovieParameters(name: 'Joker', director: 'Todd Phillips', posterName: 'joker.jpg'),
    MovieParameters(name: 'After', director: 'Jenny Gage', posterName: 'after.jpg'),
    MovieParameters(name: 'Alpha', director: 'Albert Hughes', posterName: 'alpha.jpg'),
    MovieParameters(name: 'Ant Man', director: 'Peyton Reed', posterName: 'ant_man.jpg'),
    MovieParameters(name: 'Archer', director: 'Denny Lawrence', posterName: 'archer.jpg'),
    MovieParameters(name: 'Freedom', director: 'Peter Cousens', posterName: 'freedom.jpg'),
    MovieParameters(name: 'Moonlight', director: 'Barry Jenkins', posterName: 'moonlight.jpg'),
    MovieParameters(name: 'Project Power', director: 'Henry Joost', posterName: 'project_power.jpg'),
    MovieParameters(name: 'Split', director: 'Night Shyamalan', posterName: 'split.jpg'),
    MovieParameters(name: 'The Hill', director: 'Sidney Lumet', posterName: 'the_hill.jpg'),
  ];

  int totalMovies() {
    return movies.length;
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SliverToBoxAdapter(
      child: Container(
        height: size.height/1.75,
        margin: EdgeInsets.only(top: 5),
        child: ListView.builder(
          itemCount: movies.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
                child: Column(
                  children: [
                    Container(
                      height: size.height/10,
                      child: ListTile(
                        onTap: () {},
                        title: Text('Name: ${movies[index].name} & Director: ${movies[index].director}'),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/${movies[index].posterName}'),
                          radius: 35,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit),),
                        Spacer(),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever),),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
