// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsApiModel _$ProductsApiModelFromJson(Map<String, dynamic> json) =>
    ProductsApiModel(
      productId: (json['productId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      productName: json['productName'] as String,
      productPrice: json['productPrice'] as String,
      productImage: json['productImage'] as String,
      productDescription: json['productDescription'] as String,
    );

Map<String, dynamic> _$ProductsApiModelToJson(ProductsApiModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'id': instance.id,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'productImage': instance.productImage,
      'productDescription': instance.productDescription,
    };
