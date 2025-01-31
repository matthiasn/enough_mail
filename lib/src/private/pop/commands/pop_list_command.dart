import 'package:enough_mail/src/pop/pop_response.dart';
import 'package:enough_mail/src/private/pop/parsers/pop_list_parser.dart';
import 'package:enough_mail/src/private/pop/pop_command.dart';

/// Lists messages or a given specific message
class PopListCommand extends PopCommand<List<MessageListing>> {
  /// Creates a new LIST command
  PopListCommand([int? messageId])
      : super(
          messageId == null ? 'LIST' : 'LIST $messageId',
          parser: PopListParser(),
          isMultiLine: messageId == null,
        );
}
