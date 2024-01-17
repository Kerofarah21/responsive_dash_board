import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import 'selected_and_not_selected_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpansesItemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel allExpansesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedAllExpensesItem(
            allExpansesItemModel: allExpansesItemModel,
          )
        : NotSelectedAllExpensesItem(
            allExpansesItemModel: allExpansesItemModel,
          );
  }
}
