import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_recruitment_task/secrets/keys.dart';
import 'package:pokemon_recruitment_task/services/network_service/network_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@LazySingleton(as: NetworkService)
class NetworkServiceImpl implements NetworkService {
  late final Dio _dio;

  NetworkServiceImpl() {
    _dio = _createDio();
  }

  Dio _createDio() => Dio()

    // Uncomment to log responses/requests, commented out as
    // it clutters the logs significantly
    ..interceptors.add(PrettyDioLogger());

  @override
  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) =>
      _dio.get(
        '${Keys.apiUrl}/$url',
        queryParameters: {if (queryParameters != null) ...queryParameters},
      );
}
