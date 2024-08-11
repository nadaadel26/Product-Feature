import 'dart:io';
import 'msgs.dart';
import 'states.dart';

void main() {
  while(true){
    welcomeMsg();
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1:
        GetAllProductsState();
      case 2:
      GetSingleProductState();
      case 3:
        AddProductState();
      case 4:
        UpdateProductState();
      case 5:
        DeleteProductState();
      case 6:
        exit(0);
      default:
        print('Invalid choice. Please try again');




    }
  }
}