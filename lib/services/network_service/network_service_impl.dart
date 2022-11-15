import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_recruitment_task/core/data/endpoints.dart';
import 'package:pokemon_recruitment_task/services/network_service/network_service.dart';

@LazySingleton(as: NetworkService)
class NetworkServiceImpl implements NetworkService {
  late final Dio _dio;

  NetworkServiceImpl() {
    _dio = _createDio();
  }

  Dio _createDio() => Dio();
  // Uncomment to log responses/requests, commented out as
  // it clutters the logs significantly
  // ..interceptors.add(PrettyDioLogger());

  @override
  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) =>
      _dio.get(
        '${Endpoints.apiUrl}$url',
        queryParameters: {if (queryParameters != null) ...queryParameters},
      );
}
