import 'package:flutter/material.dart';
import 'package:islamicapp/Providers/ThemeProvider.dart';
import 'package:islamicapp/app_translation/app_translation.dart';
import 'package:islamicapp/home_screen/settings_tab/LanguageBottomsheet.dart';
import 'package:islamicapp/home_screen/settings_tab/ThemeBottomsheet.dart';
import 'package:provider/provider.dart';
import 'package:islamicapp/Providers/LocalizationsProvider.dart';

class settingsTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LoclaizationsProvider localizationsProvider = Provider.of<LoclaizationsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(appTranslations(context).language),
          Divider( height: 10, color: Colors.transparent,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                   width: 2
                )
              ),
                child: Text(
                    localizationsProvider.currentLocale=='en'?'English':
                'العربية')),
          ),
          Divider(height: 10,color: Colors.transparent),
          Text(appTranslations(context).theme),
          Divider( height: 10,color: Colors.transparent),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                   width: 2
                )
              ),
                child: Text( themeProvider.currentTheme==ThemeMode.light?appTranslations(context).light:
                appTranslations(context).dark)),
          ),

        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder :
    (context) => LanguageBottomSheet());
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder :
        (context) => ThemeBottomSheet());
  }

}