import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/user_info_model.dart';
import '../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;

  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
