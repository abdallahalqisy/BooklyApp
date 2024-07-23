import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromBook(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json['textSnippet'] as String?,
      );

  Map<String, dynamic> toBook() => {
        'textSnippet': textSnippet,
      };

  @override
  List<Object?> get props => [textSnippet];
}
