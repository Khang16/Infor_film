/*
 * File: base_api_exception.dart
 * File Created: Friday, 26th August 2022 10:18:38 pm
 * Author: Hieu Tran
 * -----
 * Last Modified: Friday, 26th August 2022 10:21:33 pm
 * Modified By: Hieu Tran
 */

import 'app_exception.dart';

abstract class BaseApiException extends AppException {
  final int httpCode;
  final String? error;
  final String status;

  BaseApiException({
    this.httpCode = -1,
    this.error,
    this.status = '',
    String message = '',
  }) : super(message: message);
}
