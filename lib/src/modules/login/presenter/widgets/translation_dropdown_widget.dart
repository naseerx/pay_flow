import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/presenter/assets/app_images.dart';


class TranslationDropdownWidget extends StatelessWidget {
  const TranslationDropdownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: PopupMenuButton<int>(
        key: const ValueKey<String>('pt-option'),
        tooltip: '',
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<int>>[
            PopupMenuItem<int>(
              value: 1,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    AppImages.br,
                    height: 35.h,
                    width: 35.w,
                  ),
                  const SizedBox(width: 10),
                  Text(AppLocalizations.of(context)!.ptBr),
                ],
              ),
              onTap: () {
              },
            ),
            PopupMenuItem<int>(
              value: 2,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    AppImages.eua,
                    height: 35,
                    width: 35,
                  ),
                  SizedBox(width: 10.w),
                  Text(AppLocalizations.of(context)!.enUS),
                ],
              ),
              onTap: () {
              },
            ),
            PopupMenuItem<int>(
              value: 3,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    AppImages.es,
                    height: 35.h,
                    width: 35.w,
                  ),
                  SizedBox(width: 10.w),
                  Text(AppLocalizations.of(context)!.esES),
                ],
              ),
              onTap: () {
              },
            ),
          ];
        },
      ),
    );
  }
}