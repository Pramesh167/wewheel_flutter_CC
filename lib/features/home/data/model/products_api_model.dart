import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
 
part 'products_api_model.g.dart';
 
@JsonSerializable()
class ProductsApiModel extends Equatable {
  final int productId;
  final int id;
  final String productName;
  final String productPrice;
  final String productImage;
  final String productDescription;
 
 
 
  const ProductsApiModel({
    required this.productId,
    required this.id,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productDescription,
  });
 
  factory ProductsApiModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsApiModelFromJson(json);
 
  Map<String, dynamic> toJson() => _$ProductsApiModelToJson(this);
 
  @override
  List<Object?> get props => [productId, id, productName, productPrice, productImage, productDescription];
}