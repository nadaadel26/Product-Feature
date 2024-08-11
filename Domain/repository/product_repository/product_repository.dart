import '../../entity/product.dart';

abstract class ProductRepository{

void addProduct(Product product);
List<Product>getAllProducts();
Product getProduct(int id);
void updateProduct(Product product);
void deleteProduct(int id);
}