import 'package:flutter/material.dart';
import 'package:pak_cricket_team_app/data_store/player_data_store.dart';

import 'package:pak_cricket_team_app/screen/player_history_scren.dart';
import 'package:pak_cricket_team_app/screen/t20_squad_screen.dart';

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
        title: const Center(child: Text('PakTeam')),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const T20SquadScreen( title:  'T20 Squad',)));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          // Change your radius here
                          borderRadius: BorderRadius.only(topLeft: Radius.zero),
                        ),
                      ),
                    ),
                    child: const Text('T20 Squad',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const T20SquadScreen(title: 'ODI Squad',)));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          // Change your radius here
                          borderRadius: BorderRadius.only(topLeft: Radius.zero),
                        ),
                      ),
                    ),
                    child: const Text('ODI Squad',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Pakistan cricket Players',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: playre.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayerHistoryScreen(
                                playerImage: playre[index].image,
                                playerHistory: playre[index].history),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all()),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                playre[index].image,
                                height: 100,
                              ),
                              Text(
                                playre[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(playre[index].role),
                              Text(playre[index].shart.toString()),
                            ]),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
