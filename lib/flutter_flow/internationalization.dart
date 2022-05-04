import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'hi'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'xl3b11hc': {
      'en': 'Tap to Scan',
      'hi': 'स्कैन करने के लिए टैप करें',
    },
    '2ezkbz7p': {
      'en': 'Cancel',
      'hi': 'रद्द करना',
    },
    '0gllf474': {
      'en': 'Select App Language:',
      'hi': 'ऐप भाषा चुनें:',
    },
    'hmkp2zk0': {
      'en': 'English',
      'hi': 'अंग्रेज़ी',
    },
    'ygds3pda': {
      'en': 'Hindi',
      'hi': 'हिन्दी',
    },
    'b5t8ffeo': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // ProductInfo
  {
    'qlj4g6jx': {
      'en': 'SupplyChain Info',
      'hi': 'आपूर्ति श्रृंखला जानकारी',
    },
    'nsn9fp0k': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // DataViewer
  {
    'toz52mf7': {
      'en': 'Data Viewer',
      'hi': 'डेटा व्यूअर',
    },
    'qmyzw4e5': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // Miscellaneous
  {
    's8c7oz4r': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
