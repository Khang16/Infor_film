/*
 * File: api_exception.dart
 * File Created: Friday, 26th August 2022 10:18:38 pm
 * Author: Hieu Tran
 * -----
 * Last Modified: Friday, 26th August 2022 10:18:52 pm
 * Modified By: Hieu Tran
 */

import 'base_api_exception.dart';

class ApiException extends BaseApiException {
  ApiException({
    required int httpCode,
    required String status,
    String? error,
    String message = '',
  }) : super(
          httpCode: httpCode,
          status: status,
          error: error,
          message: message,
        );
}
