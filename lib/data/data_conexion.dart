import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';
import 'package:reelsx/data/app_error.dart';
import 'dart:convert';

import 'package:reelsx/domain/models/results.dart';

class MarvelApi {
  final Dio _dio = Dio();
  final String _publicKey = '067a9d0eddd43c3ef5ab7bd1aa37aa2c';
  final String _privateKey = 'd700f1a031ff65738aec1fd00ab751c3d3ee82f2';
  final String _baseUrl = 'https://gateway.marvel.com/v1/public';

  Map<String, String> _generateAuthParams() {
    final ts = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = _generateHash(ts);
    
    return {
      'ts': ts,
      'apikey': _publicKey,
      'hash': hash,
    };
  }

  String _generateHash(String ts) {
    final input = ts + _privateKey + _publicKey;
    final bytes = utf8.encode(input);
    final digest = md5.convert(bytes);
    return digest.toString();
  }

  MarvelApi() {
    _dio.options.baseUrl = _baseUrl;
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Generamos los parámetros de autenticación
        final authParams = _generateAuthParams();
        options.queryParameters.addAll(authParams);
        print(options.uri.toString());
        return handler.next(options);
      },
    ));
  }

  Future<Welcome> getComics() async {
    return _dio
        .get('/comics')
        .then(
          (value){
            print('Result: ${value.data}');
            return Welcome.fromJson(
            json: value.data,
          );
          },
        )
        .catchError((error) {
      throw AppError.processError(error: error);
    });
  }

  String _handleError(DioException e) {
    if (e.response != null) {
      return 'Error ${e.response?.statusCode}: ${e.response?.statusMessage}';
    } else {
      return 'Error de conexión: ${e.message}';
    }
  }
}