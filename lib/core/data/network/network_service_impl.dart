import 'package:dio/dio.dart';

import '../../utilities/utilities.dart';
import 'config.dart';
import 'network_service.dart';

class NetworkServiceImpl implements NetworkService {
  Dio? _dio;

  NetworkServiceImpl() {
    final _options = BaseOptions(
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      baseUrl: kDevApiUrl, // FlavorConfig.instance.values.baseUrl,
    );

    _dio = Dio(_options);

    // _dio!.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
    //   options.headers.addAll({"X-Requested-With": "XMLHttpRequest"});

    //     return options;
    //   }
    // }));
  }

  @override
  Future<Response> getHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    bool tokenRequired = true,
    Map<String, dynamic>? headers,
  }) async {
    final response = await _dio!.get(
      endpoint,
      queryParameters: params,
      options: Options(
        extra: {'token-required': tokenRequired},
        headers: headers,
      ),
    );

    // ignore: avoid_print
    logger.i('\n\n ${response.statusCode} \n\n');

    // ignore: avoid_print
    logger.i('\n\n ${response.data} \n\n');

    return response;
  }

  @override
  Future<Map<String, dynamic>> postHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    dynamic body,
    Map<String, dynamic>? headers,
    bool tokenRequired = true,
    String? transactionToken,
  }) async {
    try {
      final response = await _dio!.post(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(
          extra: {
            'token-required': tokenRequired,
            'transaction-token': transactionToken,
          },
          headers: headers,
        ),
      );

      logger.i('\n\n ${response.statusCode} \n\n');

      logger.i('\n\n ${response.data} -- msee1 \n\n');

      return _handleApiResponse(response);
    } on DioError catch (e) {
      logger.e('\n\n ${e.response!.statusCode} -- msee2 \n\n');
      logger.e('\n\n ${e.response!.data} -- msee3 \n\n');
      return _handleApiResponse(e.response!);
    } catch (e) {
      logger.e('\n\n ${e.toString()} -- msee4 \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': e.toString(),
      };
    }
  }

  @override
  Future<Map<String, dynamic>> putHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool isPatch = false,
    bool tokenRequired = true,
  }) async {
    try {
      final response = isPatch
          ? await _dio!.patch(
              endpoint,
              queryParameters: params,
              data: body,
              options: Options(
                extra: {'token-required': tokenRequired},
                headers: headers,
              ),
            )
          : await _dio!.put(
              endpoint,
              queryParameters: params,
              data: body,
              options: Options(
                extra: {'token-required': tokenRequired},
                headers: headers,
              ),
            );

      logger.i('\n\n ${response.statusCode} \n\n');

      // ignore: avoid_print
      logger.i('\n\n ${response.data} \n\n');

      return _handleApiResponse(response);
    } on DioError catch (e) {
      logger.e('\n\n ${e.response!.statusCode} \n\n');
      logger.e('\n\n ${e.response!.data} \n\n');
      return _handleApiResponse(e.response!);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': e.toString(),
      };
    }
  }

  @override
  Future<Map<String, dynamic>> deleteHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool tokenRequired = true,
  }) async {
    try {
      final response = await _dio!.delete(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(
          extra: {'token-required': tokenRequired},
          headers: headers,
        ),
      );

      return _handleApiResponse(response);
    } on DioError catch (e) {
      logger.e('\n\n ${e.response!.statusCode} \n\n');
      logger.e('\n\n ${e.response!.data} \n\n');
      return _handleApiResponse(e.response!);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': e.toString(),
      };
    }
  }

  Map<String, dynamic> _handleApiResponse(Response response) {
    if (response == null) {
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': "(null response)",
      };
    }

    if (response.statusCode! / 200 >= 1 && response.statusCode! / 200 < 1.5) {
      if (response.data is Map && (response.data as Map).containsKey('data')) {
        return response.data as Map<String, dynamic>;
      }

      if ((response.data as Map)['success'] == false) {
        return <String, dynamic>{
          'error': ApiErrors.failure,
          'message': (response.data as Map).containsKey('errors')
              ? (response.data as Map)['errors'].toString()
              : (response.data as Map)['message'],
        };
      }

      return <String, dynamic>{'data': response.data};
    }

    final errorResult = <String, dynamic>{
      'message': '${response.data['message']}',
      'data': response.data,
    };

    switch (response.statusCode) {
      case 400:
        errorResult['error'] = ApiErrors.badRequest;
        break;
      case 401:
        errorResult['error'] = ApiErrors.unauthenticated;
        break;
      case 403:
        errorResult['error'] = ApiErrors.notPermitted;
        break;
      case 404:
        errorResult['error'] = ApiErrors.notFound;
        break;
      case 422:
        errorResult['error'] = ApiErrors.validationFailed;
        break;
      case 500:
        errorResult['error'] = ApiErrors.serverError;
        break;
      default:
        errorResult['error'] = ApiErrors.unknown;
    }

    assert(errorResult['error'] != null);
    assert(errorResult['error'] is ApiErrors);

    assert(errorResult['message'] != null);
    assert(errorResult['message'] is String);

    return errorResult;
  }
}

enum ApiErrors {
  serverError,
  badRequest,
  notFound,
  validationFailed,
  unauthenticated,
  notPermitted,
  unknown,
  noInternet,
  failure,
}
