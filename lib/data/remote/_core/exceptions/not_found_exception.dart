/*
 * File: not_found_exception.dart
 * File Created: Friday, 26th August 2022 10:18:38 pm
 * Author: Hieu Tran
 * -----
 * Last Modified: Friday, 26th August 2022 10:22:11 pm
 * Modified By: Hieu Tran
 */

import 'dart:io';

import 'api_exception.dart';

class NotFoundException extends ApiException {
  NotFoundException(String message, String status)
      : super(
          httpCode: HttpStatus.notFound,
          status: status,
          message: message,
        );
}
