import '../entity/product.dart';
import '../repository/product_repository/product_repository.dart';

class GetAllProducts{
final ProductRepository productRepository;
const GetAllProducts(this.productRepository);
List<Product> call(){
return productRepository.getAllProducts();
}
}