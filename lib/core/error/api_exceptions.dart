import 'dart:convert';

import 'package:goreto_app/core/function/text_capitalization.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import '../app/constants/app_text.dart';

String validationAPIException(http.Response response) {
  String validationException = "";
  var decodedJson = <String, dynamic>{};

  decodedJson = json.decode(response.body);
  if (decodedJson.containsKey(AppText.responseMessage) &&
      json.decode(response.body)[AppText.responseMessage] is String) {
    validationException = json.decode(response.body)[AppText.responseMessage] ??
        AppText.somethingWrong;
  } else {
    var message = decodedJson.entries.isNotEmpty
        ? (decodedJson.entries
                .firstWhere((element) => element.key == "message")
                .value as Map)
            .values
            .first
        : [];
    validationException =
        "${message.isNotEmpty ? message.first : AppText.somethingWrong}."
            .toCapitalized();
  }
  return validationException;
}

class ApiException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  ApiException([this.message, this.prefix, this.url]);
}

class ApiNotRespondingException extends ApiException {
  ApiNotRespondingException([String? message, String? url])
      : super(message, 'Api not responded in time', url);
}

class BadRequestException extends ApiException {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad Request', url);
}

class ConflictException extends ApiException {
  ConflictException([String? message, String? url])
      : super(message, 'Conflict Request', url);
}

class DataNotFoundException extends ApiException {
  DataNotFoundException([String? message, String? url])
      : super(message, 'Data not found', url);
}

class FetchDataException extends ApiException {
  FetchDataException([String? message, String? url])
      : super(message, 'Unable to process', url);
}

class ForbiddenException extends ApiException {
  ForbiddenException([String? message, String? url])
      : super(message, 'Forbidden resourse', url);
}

class UnAuthorizedException extends ApiException {
  UnAuthorizedException([String? message, String? url])
      : super(message, 'UnAuthorized request', url);
}

class ValidationException extends ApiException {
  ValidationException([String? message, String? url])
      : super(message, 'Validation Error', url);
}
