import 'package:dio/dio.dart';
import 'package:flutter_valorant_game_guide/repositories/adapters/adapter_interface.dart';

class Repository<T> {
  Repository({required this.dio, required this.adapter});

  final Dio dio;
  final IAdapter<T> adapter;

  static const String _baseUrl = 'https://valorant-api.com/v1';

  Future<List<T>> getData({required String endpoint}) async {
    try {
      Response response = await dio.get('$_baseUrl/$endpoint');
      final data = response.data;

      return adapter.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
