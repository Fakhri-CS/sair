// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'ليس لديك بلاغات نشطة', one: 'لديك بلاغ نشط واحد', two: 'لديك بلاغان نشطان', other: 'لديك ${count} بلاغات نشطة')}";

  static String m1(version, portalName) =>
      "تطبيق سير v${version} • ${portalName}";

  static String m2(name) => "مرحباً، ${name}";

  static String m3(count) =>
      "${Intl.plural(count, zero: 'لا توجد صور مرفقة', one: 'صورة واحدة مرفقة', two: 'صورتان مرفقتان', other: '${count} صور مرفقة')}";

  static String m4(days) => "منذ ${days} أيام";

  static String m5(hours) => "منذ ${hours} ساعة";

  static String m6(minutes) => "منذ ${minutes} دقيقة";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "accidentLocationTitle": MessageLookupByLibrary.simpleMessage(
      "موقع الحادث",
    ),
    "accidentReportTitle": MessageLookupByLibrary.simpleMessage("تقرير الحادث"),
    "accidentTypeFrontal": MessageLookupByLibrary.simpleMessage("صدمة أمامية"),
    "accidentTypeOther": MessageLookupByLibrary.simpleMessage("أخرى"),
    "accidentTypeRearEnd": MessageLookupByLibrary.simpleMessage("صدمة خلفية"),
    "accidentTypeSideSwipe": MessageLookupByLibrary.simpleMessage(
      "احتكاك جانبي",
    ),
    "accidentTypeTitle": MessageLookupByLibrary.simpleMessage("نوع الحادث"),
    "accountProtectionLabel": MessageLookupByLibrary.simpleMessage(
      "حماية الحساب",
    ),
    "accountStatusLabel": MessageLookupByLibrary.simpleMessage("حالة الحساب"),
    "accountStatusVerified": MessageLookupByLibrary.simpleMessage("مفعل"),
    "activeReportsCount": m0,
    "addPlateButton": MessageLookupByLibrary.simpleMessage("إضافة لوحة"),
    "alertsAndUpdatesLabel": MessageLookupByLibrary.simpleMessage(
      "التنبيهات والتحديثات",
    ),
    "allowNotifications": MessageLookupByLibrary.simpleMessage(
      "السماح بالإشعارات",
    ),
    "allowNotificationsSubtitle": MessageLookupByLibrary.simpleMessage(
      "تفعيل جميع تنبيهات التطبيق",
    ),
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "لديك حساب بالفعل؟ ",
    ),
    "appFooterText": m1,
    "arabicLabel": MessageLookupByLibrary.simpleMessage("العربية"),
    "arabicSubtitle": MessageLookupByLibrary.simpleMessage("العربية"),
    "cancelButton": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "contactSupport": MessageLookupByLibrary.simpleMessage(
      "هل تواجه مشكلة؟ اتصل بالدعم على 19900",
    ),
    "copyrightText": MessageLookupByLibrary.simpleMessage(
      "© 2024 SAIR للحوكمة الرقمية. جميع الحقوق محفوظة.",
    ),
    "createAccountSubtitle": MessageLookupByLibrary.simpleMessage(
      "يرجى تعبئة بياناتك للتسجيل كمواطن.",
    ),
    "createAccountTitle": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "currentStatusLabel": MessageLookupByLibrary.simpleMessage(
      "الحالة الحالية",
    ),
    "dashboardSubtitle": MessageLookupByLibrary.simpleMessage(
      "كل شيء يبدو آمناً اليوم.",
    ),
    "dashboardTitle": MessageLookupByLibrary.simpleMessage("لوحة التحكم"),
    "dateLabel": MessageLookupByLibrary.simpleMessage("التاريخ"),
    "deleteButton": MessageLookupByLibrary.simpleMessage("حذف"),
    "descriptionHint": MessageLookupByLibrary.simpleMessage(
      "أضف أي تفاصيل إضافية هنا...",
    ),
    "descriptionTitle": MessageLookupByLibrary.simpleMessage("الوصف"),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟"),
    "emailAlerts": MessageLookupByLibrary.simpleMessage(
      "تنبيهات البريد الإلكتروني",
    ),
    "emailAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
      "تلقي ملخصات البلاغات عبر البريد",
    ),
    "emailHint": MessageLookupByLibrary.simpleMessage(
      "مثال: citizen@example.com",
    ),
    "emailLabel": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "englishLabel": MessageLookupByLibrary.simpleMessage("English (US)"),
    "englishSubtitle": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
    "enterPlateExactlyHint": MessageLookupByLibrary.simpleMessage(
      "أدخل الحروف والأرقام تماماً كما هي مطبوعة على اللوحة",
    ),
    "errorEmptyEmail": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال بريدك الإلكتروني",
    ),
    "errorEmptyFullName": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال اسمك الكامل",
    ),
    "errorEmptyPhone": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رقم هاتفك",
    ),
    "errorInvalidEmail": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال بريد إلكتروني صحيح",
    ),
    "evidenceCapturedTitle": MessageLookupByLibrary.simpleMessage(
      "الأدلة الملتقطة",
    ),
    "evidencePreviewTitle": MessageLookupByLibrary.simpleMessage(
      "معاينة الأدلة",
    ),
    "failedToLoadNotifications": MessageLookupByLibrary.simpleMessage(
      "فشل تحميل الإشعارات",
    ),
    "fullNameHint": MessageLookupByLibrary.simpleMessage("مثال: مواطن صالح"),
    "fullNameLabel": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
    "getCurrentLocation": MessageLookupByLibrary.simpleMessage(
      "تحديد موقعي الحالي",
    ),
    "globalSettingsLabel": MessageLookupByLibrary.simpleMessage(
      "الإعدادات العامة",
    ),
    "governmentServicesPortal": MessageLookupByLibrary.simpleMessage(
      "بوابة الخدمات الحكومية",
    ),
    "greetingHi": m2,
    "homeNav": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "incidentInfoTitle": MessageLookupByLibrary.simpleMessage("معلومات الحادث"),
    "incidentQuestion": MessageLookupByLibrary.simpleMessage(
      "هل تعرضت لحادث بسيط؟",
    ),
    "incidentSubtitle": MessageLookupByLibrary.simpleMessage(
      "بلغ بسرعة وتابع طريقك.",
    ),
    "languageTitle": MessageLookupByLibrary.simpleMessage("اللغة"),
    "licensePlateTitle": MessageLookupByLibrary.simpleMessage("رقم اللوحة"),
    "liveSystem": MessageLookupByLibrary.simpleMessage("نظام مباشر"),
    "locationLabel": MessageLookupByLibrary.simpleMessage("الموقع"),
    "locationLabelCap": MessageLookupByLibrary.simpleMessage("الموقع"),
    "locationNotChosen": MessageLookupByLibrary.simpleMessage(
      "لم يتم اختيار الموقع",
    ),
    "locationPreviewTitle": MessageLookupByLibrary.simpleMessage(
      "معاينة الموقع",
    ),
    "logInLink": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "loginButton": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "mockCategory": MessageLookupByLibrary.simpleMessage("صيانة الطرق"),
    "mockDate": MessageLookupByLibrary.simpleMessage("24 أكتوبر 2023"),
    "mockLocation": MessageLookupByLibrary.simpleMessage("العليا، الرياض"),
    "mockReportId": MessageLookupByLibrary.simpleMessage("SR-99281"),
    "mockStatusApproved": MessageLookupByLibrary.simpleMessage("موافق عليه"),
    "myReportsNav": MessageLookupByLibrary.simpleMessage("تقاريري"),
    "nationalIdHint": MessageLookupByLibrary.simpleMessage("مثال: 1234567890"),
    "nationalIdLabel": MessageLookupByLibrary.simpleMessage("الرقم الوطني"),
    "needHelpSubtitle": MessageLookupByLibrary.simpleMessage(
      "قم بتقديم استفسار جديد أو الإبلاغ عن مشكلة إلى\nالبلدية المحلية.",
    ),
    "needHelpTitle": MessageLookupByLibrary.simpleMessage("هل تحتاج مساعدة؟"),
    "noEvidenceCaptured": MessageLookupByLibrary.simpleMessage(
      "لم يتم التقاط أي أدلة بعد.",
    ),
    "noNotificationsYet": MessageLookupByLibrary.simpleMessage(
      "لا توجد إشعارات بعد",
    ),
    "notificationsTitle": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "passwordHint": MessageLookupByLibrary.simpleMessage("أدخل كلمة مرور آمنة"),
    "passwordLabel": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "phoneHint": MessageLookupByLibrary.simpleMessage("مثال: 0790000000"),
    "phoneLabel": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "photosCountLabel": m3,
    "plateNumbersHint": MessageLookupByLibrary.simpleMessage("أرقام اللوحات"),
    "preferencesLabel": MessageLookupByLibrary.simpleMessage("التفضيلات"),
    "pressToReportHint": MessageLookupByLibrary.simpleMessage(
      "اضغط هنا للإبلاغ",
    ),
    "previewButton": MessageLookupByLibrary.simpleMessage("معاينة"),
    "profileTitle": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
    "progressApproved": MessageLookupByLibrary.simpleMessage(
      "تم الموافقة على البلاغ",
    ),
    "progressReceived": MessageLookupByLibrary.simpleMessage(
      "تم استلام البلاغ",
    ),
    "progressUnderReview": MessageLookupByLibrary.simpleMessage("قيد المراجعة"),
    "recentActivityTitle": MessageLookupByLibrary.simpleMessage(
      "النشاط الأخير",
    ),
    "registerAppBarTitle": MessageLookupByLibrary.simpleMessage("تسجيل"),
    "registerButton": MessageLookupByLibrary.simpleMessage("تسجيل"),
    "registerNow": MessageLookupByLibrary.simpleMessage("سجل الآن"),
    "registerSuccessMessage": MessageLookupByLibrary.simpleMessage(
      "تم التسجيل بنجاح!",
    ),
    "removePhotoContent": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد أنك تريد حذف هذا الدليل؟",
    ),
    "removePhotoTitle": MessageLookupByLibrary.simpleMessage("إزالة الصورة؟"),
    "reportApprovedStatus": MessageLookupByLibrary.simpleMessage(
      "تم الموافقة على البلاغ",
    ),
    "reportDetailsSubtitle": MessageLookupByLibrary.simpleMessage(
      "يرجى تقديم معلومات دقيقة لضمان\nمعالجة الطلب بسرعة",
    ),
    "reportDetailsTitle": MessageLookupByLibrary.simpleMessage("تفاصيل البلاغ"),
    "reportIdLabel": MessageLookupByLibrary.simpleMessage("رقم البلاغ"),
    "reportMinorAccidentBtn": MessageLookupByLibrary.simpleMessage(
      "الإبلاغ عن حادث بسيط",
    ),
    "reportProgressTitle": MessageLookupByLibrary.simpleMessage("تقدم البلاغ"),
    "reportStatus": MessageLookupByLibrary.simpleMessage("حالة البلاغ"),
    "reportStatusSubtitle": MessageLookupByLibrary.simpleMessage(
      "تلقي تنبيه عند تغير حالة البلاغ",
    ),
    "reportsTitle": MessageLookupByLibrary.simpleMessage("التقارير"),
    "safetyFirstDescription": MessageLookupByLibrary.simpleMessage(
      "قبل البدء بالإبلاغ، يرجى نقل مركبتك إلى أقرب موقع آمن لتجنب عرقلة حركة السير.",
    ),
    "safetyFirstTitle": MessageLookupByLibrary.simpleMessage("السلامة أولاً"),
    "secureAccessSubtitle": MessageLookupByLibrary.simpleMessage(
      "وصول آمن إلى البوابة\nالحكومية الموحدة",
    ),
    "secureEncryptionText": MessageLookupByLibrary.simpleMessage(
      "تشفير آمن 100%",
    ),
    "securityTitle": MessageLookupByLibrary.simpleMessage("الأمان"),
    "selectOnMap": MessageLookupByLibrary.simpleMessage("تحديد من الخريطة"),
    "settingsHeader": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "settingsLanguage": MessageLookupByLibrary.simpleMessage("اللغة"),
    "settingsLanguageSubtitle": MessageLookupByLibrary.simpleMessage("العربية"),
    "settingsLogout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "settingsLogoutSubtitle": MessageLookupByLibrary.simpleMessage(
      "إنهاء الجلسة الحالية",
    ),
    "settingsNotifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "settingsNotificationsSubtitle": MessageLookupByLibrary.simpleMessage(
      "الكل مفعّل",
    ),
    "settingsSecurity": MessageLookupByLibrary.simpleMessage("الأمان"),
    "settingsSecuritySubtitle": MessageLookupByLibrary.simpleMessage(
      "تحقق بخطوتين مفعّل",
    ),
    "smsNotifications": MessageLookupByLibrary.simpleMessage("رسائل SMS"),
    "smsNotificationsSubtitle": MessageLookupByLibrary.simpleMessage(
      "تحديثات هامة تصل إلى هاتفك",
    ),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage("حدث خطأ ما!"),
    "statusApproved": MessageLookupByLibrary.simpleMessage("موافق عليه"),
    "statusApprovedShort": MessageLookupByLibrary.simpleMessage("موافق عليه"),
    "statusPending": MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
    "statusRejected": MessageLookupByLibrary.simpleMessage("مرفوض"),
    "statusUnderReview": MessageLookupByLibrary.simpleMessage("قيد المراجعة"),
    "submitNewReportBtn": MessageLookupByLibrary.simpleMessage(
      "تقديم بلاغ جديد",
    ),
    "submitReport": MessageLookupByLibrary.simpleMessage("تقديم البلاغ"),
    "submittedOnLabel": MessageLookupByLibrary.simpleMessage("تاريخ التقديم"),
    "switchLanguageText": MessageLookupByLibrary.simpleMessage("English"),
    "takePicture": MessageLookupByLibrary.simpleMessage("التقط صورة"),
    "timeDaysAgo": m4,
    "timeHoursAgo": m5,
    "timeLabel": MessageLookupByLibrary.simpleMessage("الوقت"),
    "timeMinutesAgo": m6,
    "totalReportsLabel": MessageLookupByLibrary.simpleMessage(
      "إجمالي البلاغات",
    ),
    "trackInteractions": MessageLookupByLibrary.simpleMessage("تتبع البلاغات"),
    "tryAgainBtn": MessageLookupByLibrary.simpleMessage("حاول مرة أخرى"),
    "twoFactorAuth": MessageLookupByLibrary.simpleMessage(
      "المصادقة الثنائية (2FA)",
    ),
    "twoFactorSubtitle": MessageLookupByLibrary.simpleMessage(
      "طلب رمز عند تسجيل الدخول من أجهزة جديدة",
    ),
    "verifiedCitizenStatus": MessageLookupByLibrary.simpleMessage(
      "مواطن معتمد",
    ),
    "viewDetails": MessageLookupByLibrary.simpleMessage("عرض التفاصيل"),
    "welcomeBack": MessageLookupByLibrary.simpleMessage("أهلاً بعودتك"),
  };
}
