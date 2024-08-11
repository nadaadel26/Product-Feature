import '../entity/product.dart';
import '../repository/product_repository/product_repository.dart';

class AddProduct{
  final ProductRepository productRepository;
  const AddProduct(this.productRepository);
void call(Product product){
  productRepository.addProduct(product);
}
}