// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "auto": MessageLookupByLibrary.simpleMessage("自动"),
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "language": MessageLookupByLibrary.simpleMessage("语言"),
        "login": MessageLookupByLibrary.simpleMessage("登录"),
        "logout": MessageLookupByLibrary.simpleMessage("退出"),
        "logoutTip": MessageLookupByLibrary.simpleMessage("退出提示"),
        "noDescription": MessageLookupByLibrary.simpleMessage("没有描述"),
        "password": MessageLookupByLibrary.simpleMessage("密码"),
        "test": MessageLookupByLibrary.simpleMessage("666"),
        "theme": MessageLookupByLibrary.simpleMessage("主题"),
        "title": MessageLookupByLibrary.simpleMessage("Flutter 应用"),
        "userName": MessageLookupByLibrary.simpleMessage("用户名"),
        "userNameOrPasswordWrong":
            MessageLookupByLibrary.simpleMessage("用户名或密码错误"),
        "userNameRequired": MessageLookupByLibrary.simpleMessage("用户名请求"),
        "yes": MessageLookupByLibrary.simpleMessage("是的")
      };
}
