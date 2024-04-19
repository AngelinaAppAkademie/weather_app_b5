
import 'package:flutter/material.dart';
import 'package:weather_app_b5/data/mock_database.dart';
import 'package:weather_app_b5/domain/person.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  //State
  String city = "";
  MockDatabase mockDB = MockDatabase();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mockDB.getPersons().length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              Person p = mockDB.getPersons()[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      city = p.city;
                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.pink,
                    ),
                  ),
                  child: Text(
                    p.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Wetter in $city"),
        const Text("Sonnig 300°C"),
      ],
    );
  }
}
