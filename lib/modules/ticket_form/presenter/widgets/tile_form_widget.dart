import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/presenter/configs/app_colors.dart';
import '../../../../core/presenter/configs/app_text_styles.dart';

class TileFormWidget extends StatelessWidget {
  final String hintText;
  final String imagePrefix;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final bool readOnly;

  const TileFormWidget({
    Key? key,
    required this.imagePrefix,
    required this.hintText,
    required this.textEditingController,
    this.validator,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.h),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              readOnly: readOnly,
              validator: validator,
              controller: textEditingController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: [
                'AppTranslationStrings.value.tr',
                'AppTranslationStrings.expiration.tr'
              ].contains(hintText)
                  ? TextInputType.number
                  : null,
              inputFormatters: [
                'AppTranslationStrings.value.tr',
                'AppTranslationStrings.expiration.tr',
              ].contains(hintText)
                  ? [FilteringTextInputFormatter.digitsOnly]
                  : null,
              maxLength: ['Vencimento'].contains(hintText) ? 10 : null,
              decoration: InputDecoration(
                counterText: '',
                hintText: hintText,
                hintStyle: AppTextStyles.buttonGray,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(imagePrefix),
                        SizedBox(width: 15.w),
                        const VerticalDivider(
                          thickness: 1.5,
                          color: AppColors.input,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
