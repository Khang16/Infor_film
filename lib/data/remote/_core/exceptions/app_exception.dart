/*
 * File: app_exception.dart
 * File Created: Friday, 26th August 2022 10:18:38 pm
 * Author: Hieu Tran
 * -----
 * Last Modified: Friday, 26th August 2022 10:19:10 pm
 * Modified By: Hieu Tran
 */

import 'base_exception.dart';

class AppException extends BaseException {
  AppException({
    String message = '',
    StackTrace? stackTrace,
  }) : super(message: message, stackTrace: stackTrace);
}
