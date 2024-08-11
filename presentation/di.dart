import '../Data/data_source/product_remote_data.dart';
import '../Data/repository/product_repository_imp.dart';
import '../Domain/usecases/add_product.dart';
import '../Domain/usecases/delete_product.dart';
import '../Domain/usecases/get_all_products.dart';
import '../Domain/usecases/get_product.dart';
import '../Domain/usecases/update_product.dart';
import 'states.dart';

//!Postrepositoryimp
ProductRepositoryImp productRepositoryImp=ProductRepositoryImp(ProductRemoteData());

//!usecases
GetAllProducts getAllProducts= GetAllProducts(productRepositoryImp);
GetProduct getProduct =GetProduct(productRepositoryImp);
AddProduct addProduct =AddProduct(productRepositoryImp);
UpdateProduct updateProduct=UpdateProduct(productRepositoryImp);
DeleteProduct deleteProduct=DeleteProduct(productRepositoryImp);

//States
GetAllProductsState getAllProductsState = GetAllProductsState();
GetSingleProductState getSingleProductState = GetSingleProductState(); 
AddProductState addProductState = AddProductState();
UpdateProductState updateProductState = UpdateProductState();
DeleteProductState deleteProductState = DeleteProductState();