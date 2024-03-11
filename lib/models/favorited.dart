import 'package:submission_dicoding/core.dart';

class Favorited{
  final String favId;
  final Destionation desId;
  final User userId;
  bool? isFavorited = false;

  Favorited(this.userId,{required this.favId, required this.desId, this.isFavorited});
}