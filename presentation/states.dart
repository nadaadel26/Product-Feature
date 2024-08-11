import '../Domain/entity/product.dart';
import 'di.dart';
import 'msgs.dart';
import 'dart:io';

sealed class ProductStates{}

class AddProductState extends ProductStates {
  void call(){
    recieverMsg('The title pf the product');
    String title = stdin.readLineSync()!;
    recieverMsg('the description of the product');
    String description = stdin.readLineSync()!;
    recieverMsg('the price of the product');
    String quantity = stdin.readLineSync()!;
    addProduct(Product(title: title,description: description,quantity: quantity));
    endTaskMsg();
  }
}

class DeleteProductState extends ProductStates{
void call(){
recieverMsg('enter the id of the product you want to delete');
int id=int.parse(stdin.readLineSync()!);
deleteProduct(id);
endTaskMsg();
}}
class GetAllProductsState extends ProductStates{
  void call(){
    getAllProducts().forEach((product){
      print('''
Product ID: ${product.id}
Product Title: ${product.title}
Product Price: ${product.price}
Product Quantity: ${product.quantity}
Product Description: ${product.description}

*****************************************

  ''');
    });
    endTaskMsg();
  }
}
class GetSingleProductState extends ProductStates{
  void call(){
    recieverMsg('The id of the wanted product');
int id=int.parse(stdin.readLineSync()!);
    Product product = getProduct(id);
    print(''' 
Product ID: ${product.id}
Product Title: ${product.title}
Product Price: ${product.price}
Product Quantity: ${product.quantity}
Product Description: ${product.description}

*****************************************

''');

  endTaskMsg();
  }
}
class UpdateProductState extends ProductStates{
void call(){
  recieverMsg('The id of the product you want to edit');
int id=int.parse(stdin.readLineSync()!);
getProduct(id);
  recieverMsg('The title pf the product');
    String title = stdin.readLineSync()!;
    recieverMsg('the description of the product');
    String description = stdin.readLineSync()!;
    recieverMsg('the price of the product');
    String quantity = stdin.readLineSync()!;
updateProduct(Product(id: id,title: title, quantity: quantity,description: description));
endTaskMsg();
}
}
