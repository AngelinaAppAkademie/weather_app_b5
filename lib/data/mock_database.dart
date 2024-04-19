import 'package:weather_app_b5/data/database_repo.dart';
import 'package:weather_app_b5/domain/person.dart';

class MockDatabase extends DatabaseRepo {
  List<Person> persons = [
    Person("Jarne", "Lübeck"),
    Person("Angi", "Vohburg"),
  ];

  @override
  List<Person> getPersons() {
    return persons;
  }
}
