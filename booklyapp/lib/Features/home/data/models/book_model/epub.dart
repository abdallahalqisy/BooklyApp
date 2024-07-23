import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;

  const Epub({this.isAvailable});

  factory Epub.fromBook(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
      );

  Map<String, dynamic> toBook() => {
        'isAvailable': isAvailable,
      };

  @override
  List<Object?> get props => [isAvailable];
}
