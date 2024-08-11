import 'dart:convert';
import '../../core/mixins.dart';
import '../model/product_model.dart';

class ProductRemoteData with GeneratedId<ProductModel>{
static String products='[]';
List<ProductModel>getAllProducts(){
  List<dynamic> data= jsonDecode(products);
return data.map<ProductModel>((Product)=>ProductModel.fromJson(Product)).toList();
}
ProductModel getProduct(int id){
return getAllProducts().firstWhere((Product)=>id==Product.id);
}
void addProduct(ProductModel product){
  List<ProductModel>data=getAllProducts();
product.id = getId(data);
data.add(product);
products=jsonEncode(data);
}
void updateProduct(ProductModel product){
    List<ProductModel>data=getAllProducts();
    data=data.map<ProductModel>((p){
      if(p.id==product.id){
        return product;
}
  return p;
}).toList();
}
void deleteProduct(int id){
    List<ProductModel>data=getAllProducts();
    data.removeWhere((product)=>id==product.id);
    print('deleted');
}
}