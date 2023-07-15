import 'package:flutter/widgets.dart';

class LabeledInfo extends StatelessWidget {
  const LabeledInfo({
    super.key,
    required this.label,
    required this.value,
    this.labelTextStyle,
    this.valueTextStyle,
  });

  final String label;
  final String value;
  final TextStyle? labelTextStyle;
  final TextStyle? valueTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(label, style: labelTextStyle),
        const SizedBox(width: 4),
        Text(value, style: valueTextStyle),
      ],
    );
  }
}
