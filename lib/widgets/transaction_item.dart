import 'package:flutter/material.dart';

import '../models/transaction_item_model.dart';
import '../utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionItemModel});

  final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionItemModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
