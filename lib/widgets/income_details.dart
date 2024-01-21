import 'package:flutter/material.dart';

import '../models/income_item_model.dart';
import 'income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeItemModel> items = [
    IncomeItemModel(
      dotColor: Color(0xFF208BC7),
      title: 'Design service',
      percentage: '40%',
    ),
    IncomeItemModel(
      dotColor: Color(0xFF4DB7F2),
      title: 'Design product',
      percentage: '25%',
    ),
    IncomeItemModel(
      dotColor: Color(0xFF064060),
      title: 'Product royalti',
      percentage: '20%',
    ),
    IncomeItemModel(
      dotColor: Color(0xFFE2DECD),
      title: 'Other',
      percentage: '15%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => IncomeItemDetails(
        incomeItemModel: items[index],
      ),
      itemCount: items.length,
    );
  }
}
