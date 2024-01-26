import 'package:flutter/material.dart';
import 'package:pak_cricket_team_app/data_store/player_data_store.dart';
import 'package:pak_cricket_team_app/models/player_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PakTeam'),
      ),
      body: Column(
        children: [
          const Text('T20- squad for world Cup' , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Expanded(
            child: GridView.builder(
                itemCount: playre.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    Image.asset(
                      playre[index].image,
                      height: 100,
                    ),
                    Text(playre[index].name),
                    Text(playre[index].role),
                    Text(playre[index].shart.toString()),
                  ]);
                }),
          ),
        ],
      ),
    );
  }
}
