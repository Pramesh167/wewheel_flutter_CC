import 'package:equatable/equatable.dart';
 
class ProductEntity extends Equatable{
  final int productId;
  final int id;
  final String productName;
  final String productPrice;
  final String productImage;
  final String productDescription;
 
  const ProductEntity({
    required this.productId,
    required this.id,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productDescription,
  });
 
  @override
  List<Object?> get props => [productId, id, productName, productPrice, productImage, productDescription];
}