import 'package:weather_app_b5/domain/person.dart';

abstract class DatabaseRepo {
  List<Person> getPersons();
}