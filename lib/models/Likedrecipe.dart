import 'package:recipes_app/main2.dart';

class LikedRecipe{
  int ?id;
  String ?name;
  String?uidlike;
  LikedRecipe({
    required this.id,
    required this.name,
  });
  LikedRecipe.fromMap(Map<String,dynamic>map){
    id=map['id'];
    name=map['name'];
    uidlike=map['uid'];
  }
  Map<String,dynamic>toMap(){
    return {
'id':id,
'name':name,
'uidlike':uidlike,
    };
  }
}