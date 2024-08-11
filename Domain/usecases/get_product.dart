import '../entity/product.dart';
import '../repository/product_repository/product_repository.dart';

class GetProduct{
 final ProductRepository productRepository;
 const GetProduct(this.productRepository);
 Product call(int id){
  return productRepository.getProduct(id);
}
}