import 'package:flutter/material.dart';
import 'package:pak_cricket_team_app/data_store/player_data_store.dart';

class T20SquadScreen extends StatelessWidget {
  final String title;
  const T20SquadScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text(title)),
      ),
      body: ListView.builder(
          itemCount: playre.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(playre[index].image),
                  maxRadius: 25,
                ),
                title: Text(
                  playre[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(playre[index].role),
                trailing: Text(playre[index].shart.toString()),
              ),
            );
          }),
    );
  }
}
