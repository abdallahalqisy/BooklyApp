import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  const PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromBook(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'] as bool?,
      containsImageBubbles: json['containsImageBubbles'] as bool?,
    );
  }

  Map<String, dynamic> toBook() => {
        'containsEpubBubbles': containsEpubBubbles,
        'containsImageBubbles': containsImageBubbles,
      };

  @override
  List<Object?> get props => [containsEpubBubbles, containsImageBubbles];
}
