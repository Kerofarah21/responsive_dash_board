import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
