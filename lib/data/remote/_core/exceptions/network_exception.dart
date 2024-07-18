/*
 * File: network_exception.dart
 * File Created: Friday, 26th August 2022 10:18:38 pm
 * Author: Hieu Tran
 * -----
 * Last Modified: Friday, 26th August 2022 10:21:57 pm
 * Modified By: Hieu Tran
 */

import 'base_exception.dart';

class NetworkException extends BaseException {
  NetworkException(String message) : super(message: message);
}
