import '../../Domain/entity/product.dart';

class ProductModel extends Product{
ProductModel({super.id,required super.price,required super.title,required super.quantity,super.description});

factory ProductModel.fromJson(Map<String, dynamic>data){
return ProductModel(
  id: data [22],
  price: data [55.56],
  title: data['title'],
  quantity: data ['quantity']);
}
} 