import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ObterTokenDoCartoCall {
  static Future<ApiCallResponse> call({
    String? publicKey = 'TEST-bb29bea6-69e3-416b-976f-e306b876e0cc',
    String? accessToken =
        'TEST-8132149613698269-043009-11d8ec78f59e3f69dbcb50ea2ffab854-804331252',
    int? cardExpirationYear,
    int? cardExpirationMonth,
    String? securityCode = '',
    String? identificationNumber = '',
    String? identificationType = '',
    String? cardholderName = '',
    String? cardNumber = '',
  }) {
    final body = '''
{
  "card_number": "${cardNumber}",
  "cardholder": {
    "name": "${cardholderName}",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    }
  },
  "security_code": "${securityCode}",
  "expiration_month": "${cardExpirationMonth}",
  "expiration_year": "${cardExpirationYear}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Obter Token do Carto',
      apiUrl:
          'https://api.mercadopago.com/v1/card_tokens?public_key=${publicKey}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic tokenCartao(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic ultimosDigitos(dynamic response) => getJsonField(
        response,
        r'''$.last_four_digits''',
      );
}

class CriarPagamentoComCartaoCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-8132149613698269-043009-11d8ec78f59e3f69dbcb50ea2ffab854-804331252',
    double? transactionAmount,
    String? token = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? zipCode = '',
    String? streetName = '',
    String? streetNumber = '',
    String? neighborhood = '',
    String? city = '',
    String? federalUnit = '',
    String? description = '',
  }) {
    final body = '''
{
  "transaction_amount": ${transactionAmount},
  "token": "${token}",
  "installments": 1,
  "payer": {
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "email": "${email}",
    "type": "customer",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    },
    "address": {
      "zip_code": "${zipCode}",
      "street_name": "${streetName}",
      "street_number": "${streetNumber}",
      "neighborhood": "${neighborhood}",
      "city": "${city}",
      "federal_unit": "${federalUnit}"
    }
  },
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Pagamento com cartao',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic idpagamento(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic dataCriacao(dynamic response) => getJsonField(
        response,
        r'''$.date_created''',
      );
  static dynamic dataAprovado(dynamic response) => getJsonField(
        response,
        r'''$.date_approved''',
      );
  static dynamic tipoOperacao(dynamic response) => getJsonField(
        response,
        r'''$.operation_type''',
      );
  static dynamic bandiraCartao(dynamic response) => getJsonField(
        response,
        r'''$.payment_method_id''',
      );
  static dynamic tipoPagamento(dynamic response) => getJsonField(
        response,
        r'''$.payment_type_id''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic moeda(dynamic response) => getJsonField(
        response,
        r'''$.currency_id''',
      );
  static dynamic descricao(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic emailCliente(dynamic response) => getJsonField(
        response,
        r'''$.payer.email''',
      );
  static dynamic identificacao(dynamic response) => getJsonField(
        response,
        r'''$.payer.identification.type''',
      );
}

class ObterDadosDePagamentoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Obter dados de pagamento',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
