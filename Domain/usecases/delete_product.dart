import '../repository/product_repository/product_repository.dart';

class DeleteProduct{
  final ProductRepository productRepository;
  const DeleteProduct(this.productRepository);
  void call(int id){
    productRepository.deleteProduct(id);
  }
}