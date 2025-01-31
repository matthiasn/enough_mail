import 'package:enough_mail/src/imap/response.dart';
import 'package:enough_mail/src/private/imap/imap_response.dart';
import 'package:enough_mail/src/private/imap/response_parser.dart';

/// Returns the given value when the command succeeded
class NoResponseParser<T> extends ResponseParser<T> {
  /// Creates a new parser
  NoResponseParser(this.value);

  /// The value to be returned for successful responses
  final T value;

  @override
  T? parse(ImapResponse imapResponse, Response<T> response) =>
      response.isOkStatus ? value : null;
}
