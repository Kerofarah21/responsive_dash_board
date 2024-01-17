import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class SelectedAllExpensesItem extends StatelessWidget {
  const SelectedAllExpensesItem({
    super.key,
    required this.allExpansesItemModel,
  });

  final AllExpensesItemModel allExpansesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpansesItemModel.image,
            backgroundColor: Colors.white.withOpacity(0.10000000149011612),
            iconColor: Colors.white,
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpansesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpansesItemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: const Color(0xFFFAFAFA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpansesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class NotSelectedAllExpensesItem extends StatelessWidget {
  const NotSelectedAllExpensesItem({
    super.key,
    required this.allExpansesItemModel,
  });

  final AllExpensesItemModel allExpansesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpansesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpansesItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(allExpansesItemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpansesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}