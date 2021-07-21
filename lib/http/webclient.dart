import 'package:conta_digital/http/interceptors/logging_interceptor.dart';
import 'package:http_interceptor/http/http.dart';


final baseUrl = 'http://192.168.1.100:3000';

final client = InterceptedClient.build(interceptors: [
  LoggingInterceptor()
]);