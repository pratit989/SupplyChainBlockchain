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
    'qen02gzg': {
      'en': 'Seller',
      'hi': 'विक्रेता',
    },
    '4lkhsymy': {
      'en': 'Certifier',
      'hi': 'प्रमाणकर्ता',
    },
    'pzrntfsv': {
      'en': 'Buyer',
      'hi': 'क्रेता',
    },
    '2jphwi18': {
      'en': 'Select App Language:',
      'hi': '',
    },
    'hmkp2zk0': {
      'en': 'English',
      'hi': 'अंग्रेज़ी',
    },
    'ygds3pda': {
      'en': 'Hindi',
      'hi': '',
    },
    'b5t8ffeo': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // Login
  {
    'jeeb30ks': {
      'en': 'Name',
      'hi': 'नाम',
    },
    'd1cj5iit': {
      'en': 'Password',
      'hi': 'कुंजिका',
    },
    '09fbilrd': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
    },
    'yg82zymg': {
      'en': 'Sign up if you aren\'t a registered user',
      'hi': 'यदि आप पंजीकृत उपयोगकर्ता नहीं हैं तो साइन अप करें',
    },
    'nsn9fp0k': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // Sellerinfo
  {
    '3lpew2al': {
      'en': 'Name',
      'hi': 'नाम',
    },
    'azvsujoh': {
      'en': '',
      'hi': '',
    },
    'k2bjgdd0': {
      'en': 'Arpit',
      'hi': 'अर्पितो',
    },
    'qrv7em1v': {
      'en': 'Phone Number',
      'hi': 'फ़ोन नंबर',
    },
    'oxcovrc1': {
      'en': '',
      'hi': '',
    },
    'mvjdxf9c': {
      'en': '1234567890',
      'hi': '1 2 3 4 5 6 7 8 9 0',
    },
    'jko632ry': {
      'en': 'E mail',
      'hi': 'ईमेल',
    },
    'eucwlb6o': {
      'en': '',
      'hi': '',
    },
    'x7yam4xl': {
      'en': 'arpit.123@gmail.com',
      'hi': 'arpit.123@gmail.com',
    },
    '3m3flxdz': {
      'en': 'Address',
      'hi': 'पता',
    },
    'vdmptfmr': {
      'en': '',
      'hi': '',
    },
    '3ijlilu2': {
      'en': 'Rose Villa , Chembur',
      'hi': 'रोज विला, चेंबूर',
    },
    '4s5u7f4y': {
      'en': 'GST Number',
      'hi': 'जीएसटी नंबर',
    },
    'rafsgkq6': {
      'en': '',
      'hi': '',
    },
    'ca8gqs66': {
      'en': 'GSTIN0000023',
      'hi': 'जीएसटीआईएन0000023',
    },
    '8qbbxngw': {
      'en': 'PAN Number',
      'hi': 'पैन नंबर',
    },
    '31oftu6f': {
      'en': '',
      'hi': '',
    },
    '2e70a6ao': {
      'en': 'DJYPG0706F',
      'hi': 'डीजेवाईपीजी0706एफ',
    },
    'da3dpro0': {
      'en': 'Seller Info.',
      'hi': 'विक्रेता जानकारी।',
    },
    '2cdh85ym': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // BuyerInfo
  {
    'azr4w65d': {
      'en': 'Buyer Info.',
      'hi': 'खरीदार जानकारी।',
    },
    'ma38j3sz': {
      'en': 'Name',
      'hi': 'नाम',
    },
    '2bb4u0ob': {
      'en': '',
      'hi': '',
    },
    'g33s1c45': {
      'en': 'Pratit',
      'hi': 'प्रतिति',
    },
    'mxy66haq': {
      'en': 'Phone Number',
      'hi': 'फ़ोन नंबर',
    },
    's3mb6ba1': {
      'en': '',
      'hi': '',
    },
    'msx1anwx': {
      'en': '0987654321',
      'hi': '0987654321',
    },
    '6g8zevyq': {
      'en': 'E mail',
      'hi': 'ईमेल',
    },
    '3ktn7ktd': {
      'en': '',
      'hi': '',
    },
    'ufqm8hp7': {
      'en': 'pratit.321@gmail.com',
      'hi': 'pratit.321@gmail.com',
    },
    'qfekre6v': {
      'en': 'Address',
      'hi': 'पता',
    },
    'mi0kicw3': {
      'en': '',
      'hi': '',
    },
    'ymsem740': {
      'en': 'Central Avenue Road, Chembur',
      'hi': 'सेंट्रल एवेन्यू रोड, चेंबूर',
    },
    'pqfxi1ia': {
      'en': 'GST Number',
      'hi': 'जीएसटी नंबर',
    },
    '3nuwtirc': {
      'en': '',
      'hi': '',
    },
    '517dh5k4': {
      'en': 'GSTIN0000023',
      'hi': 'जीएसटीआईएन0000023',
    },
    'k5oq0h7h': {
      'en': 'PAN Number',
      'hi': 'पैन नंबर',
    },
    'kvfzkmjy': {
      'en': '',
      'hi': '',
    },
    'i2n248tx': {
      'en': 'AZCPT0536D',
      'hi': 'AZCPT0536D',
    },
    'b40hjc7d': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // CertifierInfo
  {
    '39qjp8a2': {
      'en': 'Certifier Info.',
      'hi': 'प्रमाणक जानकारी।',
    },
    '50khufej': {
      'en': 'Name',
      'hi': 'नाम',
    },
    '4iph48hs': {
      'en': '',
      'hi': '',
    },
    '935fjx3u': {
      'en': 'Swara',
      'hi': 'स्वर',
    },
    '3j1gm5fe': {
      'en': 'Phone Number',
      'hi': 'फ़ोन नंबर',
    },
    '41sxxceq': {
      'en': '',
      'hi': '',
    },
    '7jc6wsby': {
      'en': '8657268017',
      'hi': '8657268017',
    },
    'zahdwoa8': {
      'en': 'E mail',
      'hi': 'ईमेल',
    },
    'tshcmbgh': {
      'en': '',
      'hi': '',
    },
    '06agggun': {
      'en': 'Swara.321@gmail.com',
      'hi': 'स्वरा.321@gmail.com',
    },
    'w3e9jiut': {
      'en': 'Address',
      'hi': 'पता',
    },
    'xjqncfq3': {
      'en': '',
      'hi': '',
    },
    'fk22r2rx': {
      'en': 'Seven Seas Road, Chembur',
      'hi': 'सेवन सीज रोड, चेंबूर',
    },
    'tz8phbk1': {
      'en': 'UID',
      'hi': 'यूआईडी',
    },
    '02xl28bf': {
      'en': '',
      'hi': '',
    },
    'hk8jxcpp': {
      'en': 'GSTIN0000023',
      'hi': 'जीएसटीआईएन0000023',
    },
    '0pntxm5v': {
      'en': 'PAN Number',
      'hi': 'पैन नंबर',
    },
    'y1hehq1e': {
      'en': '',
      'hi': '',
    },
    'ioh4lz3b': {
      'en': 'MADAR4487F',
      'hi': 'MADAR4487F',
    },
    'bc76hsk1': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // LoginCopy
  {
    'pjtfded5': {
      'en': 'Name',
      'hi': 'नाम',
    },
    '9u0i951p': {
      'en': 'Password',
      'hi': 'कुंजिका',
    },
    'h209i3ge': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
    },
    '3jxtvoxf': {
      'en': 'Sign up if you aren\'t a registered user',
      'hi': 'यदि आप पंजीकृत उपयोगकर्ता नहीं हैं तो साइन अप करें',
    },
    'glxl178m': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // LoginCopyCopy
  {
    'tl6cidog': {
      'en': 'Name',
      'hi': 'नाम',
    },
    '7w1wwb9h': {
      'en': 'Password',
      'hi': 'कुंजिका',
    },
    'ez5xdox4': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
    },
    'q4wgo1en': {
      'en': 'Sign up if you aren\'t a registered user',
      'hi': 'यदि आप पंजीकृत उपयोगकर्ता नहीं हैं तो साइन अप करें',
    },
    'ahkm45ko': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
].reduce((a, b) => a..addAll(b));
