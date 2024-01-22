import 'package:flutter/material.dart';

import '../models/income_item_model.dart';
import '../utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.incomeItemModel});

  final IncomeItemModel incomeItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemModel.dotColor,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemModel.percentage,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
