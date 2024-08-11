import '../entity/product.dart';
import '../repository/product_repository/product_repository.dart';

class UpdateProduct{
  final ProductRepository productRepository;
  const UpdateProduct(this.productRepository);
  void call(Product product){
    productRepository.updateProduct(product);
  }
}