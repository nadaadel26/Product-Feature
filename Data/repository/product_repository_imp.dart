import '../../Domain/entity/product.dart';
import '../../Domain/repository/product_repository/product_repository.dart';
import '../data_source/product_remote_data.dart';
import '../model/product_model.dart';

class ProductRepositoryImp implements ProductRepository{
ProductRemoteData productRemoteData;
ProductRepositoryImp(this.productRemoteData);
void addProduct(Product product){
  final ProductModel productModel = ProductModel(price: product.price, title: product.title, quantity: product.quantity);
    productRemoteData.addProduct(productModel);
}
List<Product>getAllProducts(){
  return productRemoteData.getAllProducts();
}
Product getProduct(int id){
  return productRemoteData.getProduct(id);
}
void updateProduct(Product product){
  final ProductModel productModel = ProductModel(price: product.price, title: product.title, quantity: product.quantity);
    productRemoteData.updateProduct(productModel);
}
void deleteProduct(int id){
  productRemoteData.deleteProduct(id);
}
}