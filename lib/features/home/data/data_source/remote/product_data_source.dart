import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_assignment/app/constants/api_endpoint.dart';

import 'package:final_assignment/core/failure/failure.dart';
import 'package:final_assignment/core/networking/remote/http_service.dart';
import 'package:final_assignment/features/home/data/model/products_api_model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
 
 
final commentDataSourceProvider = Provider<ProductDataSource>((ref) {
  final dio = ref.read(httpServiceProvider);
  return ProductDataSource(dio);
});
 
class ProductDataSource {
  final Dio _dio;
  ProductDataSource(this._dio);
 
  // get data from post with pagination
  Future<Either<Failure, List<ProductsApiModel>>> getAllProducts(int page) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.getAllProducts,
        queryParameters: {
          '_page': page,
          '_limit': ApiEndpoints.limitPage,
        },
      );
      final data = response.data as List;
      final posts = data.map((e) => ProductsApiModel.fromJson(e)).toList();
      return Right(posts);
    } on DioException catch (e) {
      return Left(Failure(error: e.message.toString()));
    }
  }
}