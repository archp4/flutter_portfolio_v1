import 'package:portfilo/models/links.dart';

class Projects {
  final String title;
  final String description;
  final Links links;
  Projects({
    required this.title,
    required this.description,
    required this.links,
  });
}

List<Projects> projects = [
  Projects(
    title: 'BBVS',
    description:
        "It's a simple voting application which is an decentralized application built using Flutter and the Ethereum Framework, and it has two modules: one for users and the other for administrators. Users can access services including adding and viewing users, candidates, elections, and verification, which allows administrators to validate users and check voting records. Users, on the other hand, can only vote in the current poll and then look at the results.",
    links: Links(
      youtube: 'https://youtu.be/NdPwz8lnjYs',
    ),
  ),
  Projects(
    title: 'STAPP',
    description:
        "It's a simple voting application which is an decentralized application built using Flutter and the Ethereum Framework, and it has two modules: one for users and the other for administrators. Users can access services including adding and viewing users, candidates, elections, and verification, which allows administrators to validate users and check voting records. Users, on the other hand, can only vote in the current poll and then look at the results.",
    links: Links(
      youtube: 'https://youtu.be/P99sKll6PmI',
    ),
  ),
  Projects(
    title: 'Social Distance Indicator',
    description:
        "It's IOT simulation project build using Arduino and Tinkercad.It can be used in place where people in everyday activity in crowded place like ticket counter at rain or bus station also counters of shop and mall.This IOT devices build using IOT components like Arduino UNO, LED ,buzzer,bread board,ultrasonic sensor.This IOT devices alert user when someone does not maintain 40 inches distance at counters.  ",
    links: Links(),
  ),
];
