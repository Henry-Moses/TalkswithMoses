import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class OpenAIWhisperCall {
  static Future<ApiCallResponse> call({
    String? file = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'OpenAI Whisper',
      apiUrl: 'https://api.openai.com/v1/audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'model': "whisper-1",
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ChatGPTAPICall {
  static Future<ApiCallResponse> call({
    String? transcript = '',
  }) {
    final ffApiRequestBody = '''
{
  "model": "text-davinci-003",
  "prompt": "Create a summary of this transcript: ${transcript} ",
  "max_tokens": 70,
  "temperature": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChatGPT API',
      apiUrl: 'https://api.openai.com/v1/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeepgramCall {
  static Future<ApiCallResponse> call({
    String? url = '',
  }) {
    final ffApiRequestBody = '''
{
  "url": "${url}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Deepgram',
      apiUrl: 'https://api.deepgram.com/v1/listen?model=nova&punctuate=true',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'TOKEN cd40d7d9c7ff24f6bd8a414bce4e6017995d7867',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic transcript(dynamic response) => getJsonField(
        response,
        r'''$.results.channels[:].alternatives[:].transcript''',
      );
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
