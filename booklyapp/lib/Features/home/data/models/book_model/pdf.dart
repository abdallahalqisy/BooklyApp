import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;

  const Pdf({this.isAvailable});

  factory Pdf.fromBook(Map<String, dynamic> json) => Pdf(
        isAvailable: json['isAvailable'] as bool?,
      );

  Map<String, dynamic> toBook() => {
        'isAvailable': isAvailable,
      };

  @override
  List<Object?> get props => [isAvailable];
}
