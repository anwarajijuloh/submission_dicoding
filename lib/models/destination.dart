import 'package:submission_dicoding/models/categories.dart';

class Destionation{
  final String desId;
  final String desName;
  final String desImage;
  final double desRating;
  final Categories id;
  final String place;
  final String description;
  final double price;
  final double suhu;
  final String depature;

  Destionation(this.id,{required this.desId, required this.desName, required this.desImage, required this.desRating, required this.place, required this.description, required this.price, required this.suhu, required this.depature});
}