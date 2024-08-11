import '../../core/identifier.dart';

class Product implements Identifier{
    int? id;
    final  title;
    final  price;
    String? description;
    final  quantity;
  Product({this.id ,required this.title, this.price,this.description ,required this.quantity});
  }
  