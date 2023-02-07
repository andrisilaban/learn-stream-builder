abstract class MyBaseResponse {
  final int statusCode;
  final String? reasonPhrase;
  final int? contentLength;
  final Map<String, String> headers;
  final bool isRedirect;
  final bool persistentConnection;

  MyBaseResponse(this.statusCode,
      {this.contentLength,
      this.headers = const {},
      this.isRedirect = false,
      this.persistentConnection = true,
      this.reasonPhrase}) {
    if (statusCode < 100) {
      throw ArgumentError('Invalid status code $statusCode.');
    } else if (contentLength != null && contentLength! < 0) {
      throw ArgumentError('Invalid content length $contentLength.');
    }
  }
}
