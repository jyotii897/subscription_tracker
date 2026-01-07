///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsHi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHi _root = this; // ignore: unused_field

	@override 
	TranslationsHi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHi(meta: meta ?? this.$meta);

	// Translations
	@override String get lang => 'hi';
	@override String get cc => 'IN';
	@override String get welcome => 'स्वागत है';
	@override String get keep_track => 'अपनी सदस्यताओं पर नज़र रखना अब बहुत आसान है';
	@override String get go => 'जाएं';
	@override String get my_subs => 'सदस्यताएँ';
	@override String get settings => 'सेटिंग्स';
	@override String get add => 'जोड़ें';
	@override String get kNull => 'कोई सदस्यता नहीं मिली। अपनी पहली सदस्यता जोड़ने के लिए + दबाएं।';
	@override String get theme => 'थीम';
	@override String get icons => 'प्रतीक';
	@override String get upload => 'अपलोड करें';
	@override String get language => 'भाषा';
	@override String get icon_title => 'सदस्यता आइकन';
	@override String get icon_descreption => 'आप सुझावित सदस्यता आइकनों में से एक चुन सकते हैं या अपना खुद का अपलोड कर सकते हैं';
	@override String get new_sub => 'नई सदस्यता';
	@override String get name => 'नाम';
	@override String get cost => 'लागत';
	@override String get pay_date => 'भुगतान की तिथि';
	@override String get reminder => 'अनुस्मारक';
	@override String get when_remind => 'हम आपको इसमें याद दिलाएंगे';
	@override String get notes => 'टिप्पणियाँ';
	@override String get save => 'सहेजें';
	@override String get about => 'अधिक विवरण';
	@override String charge_off({required Object whenPay}) => '${whenPay} को भुगतान करें';
	@override String get delete => 'हटाएं';
	@override String get edit => 'संपादन करें';
	@override String get editing_mode => 'संपादन मोड';
	@override String get changes_alert => 'क्या आप परिवर्तन सहेजना चाहते हैं?';
	@override String get cancel => 'रद्द करें';
	@override String get kContinue => 'सहेजें';
	@override late final _TranslationsRemindBeforeHi remind_before = _TranslationsRemindBeforeHi._(_root);
	@override late final _TranslationsSubHi sub = _TranslationsSubHi._(_root);
	@override late final _TranslationsWarningsHi warnings = _TranslationsWarningsHi._(_root);
	@override late final _TranslationsNotificationHi notification = _TranslationsNotificationHi._(_root);
}

// Path: remind_before
class _TranslationsRemindBeforeHi implements TranslationsRemindBeforeEn {
	_TranslationsRemindBeforeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get day => '1 दिन पहले याद दिलाएं';
	@override String get three_days => '3 दिन पहले याद दिलाएं';
	@override String get week => '1 सप्ताह पहले याद दिलाएं';
	@override String get month => '1 महीने पहले याद दिलाएं';
}

// Path: sub
class _TranslationsSubHi implements TranslationsSubEn {
	_TranslationsSubHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSubRemainingHi remaining = _TranslationsSubRemainingHi._(_root);
}

// Path: warnings
class _TranslationsWarningsHi implements TranslationsWarningsEn {
	_TranslationsWarningsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get edit_restricted => 'संपादन अभी उपलब्ध नहीं है';
}

// Path: notification
class _TranslationsNotificationHi implements TranslationsNotificationEn {
	_TranslationsNotificationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जल्दी करें और सदस्यता अक्षम करें ❗';
	@override String body({required Object sub}) => 'हम आपको याद दिलाते हैं कि ${sub} को अक्षम करें इससे पहले कि बहुत देर हो जाए😏';
}

// Path: sub.remaining
class _TranslationsSubRemainingHi implements TranslationsSubRemainingEn {
	_TranslationsSubRemainingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get today => 'आज आपको याद दिलाया गया';
	@override String get tomorrow => 'हम आपको कल याद दिलाएंगे';
	@override String get two_days => 'हम आपको परसों याद दिलाएंगे';
	@override String three_four_days({required Object remainingDays}) => 'हम आपको ${remainingDays} दिनों में याद दिलाएंगे';
	@override String more_days({required Object remainingDays}) => 'हम आपको ${remainingDays} दिनों में याद दिलाएंगे';
	@override String get expired => 'रिमाइंडर समाप्त हो गया';
}

/// The flat map containing all translations for locale <hi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'lang' => 'hi',
			'cc' => 'IN',
			'welcome' => 'स्वागत है',
			'keep_track' => 'अपनी सदस्यताओं पर नज़र रखना अब बहुत आसान है',
			'go' => 'जाएं',
			'my_subs' => 'सदस्यताएँ',
			'settings' => 'सेटिंग्स',
			'add' => 'जोड़ें',
			'kNull' => 'कोई सदस्यता नहीं मिली। अपनी पहली सदस्यता जोड़ने के लिए + दबाएं।',
			'theme' => 'थीम',
			'icons' => 'प्रतीक',
			'upload' => 'अपलोड करें',
			'language' => 'भाषा',
			'icon_title' => 'सदस्यता आइकन',
			'icon_descreption' => 'आप सुझावित सदस्यता आइकनों में से एक चुन सकते हैं या अपना खुद का अपलोड कर सकते हैं',
			'new_sub' => 'नई सदस्यता',
			'name' => 'नाम',
			'cost' => 'लागत',
			'pay_date' => 'भुगतान की तिथि',
			'reminder' => 'अनुस्मारक',
			'when_remind' => 'हम आपको इसमें याद दिलाएंगे',
			'notes' => 'टिप्पणियाँ',
			'save' => 'सहेजें',
			'about' => 'अधिक विवरण',
			'charge_off' => ({required Object whenPay}) => '${whenPay} को भुगतान करें',
			'delete' => 'हटाएं',
			'edit' => 'संपादन करें',
			'editing_mode' => 'संपादन मोड',
			'changes_alert' => 'क्या आप परिवर्तन सहेजना चाहते हैं?',
			'cancel' => 'रद्द करें',
			'kContinue' => 'सहेजें',
			'remind_before.day' => '1 दिन पहले याद दिलाएं',
			'remind_before.three_days' => '3 दिन पहले याद दिलाएं',
			'remind_before.week' => '1 सप्ताह पहले याद दिलाएं',
			'remind_before.month' => '1 महीने पहले याद दिलाएं',
			'sub.remaining.today' => 'आज आपको याद दिलाया गया',
			'sub.remaining.tomorrow' => 'हम आपको कल याद दिलाएंगे',
			'sub.remaining.two_days' => 'हम आपको परसों याद दिलाएंगे',
			'sub.remaining.three_four_days' => ({required Object remainingDays}) => 'हम आपको ${remainingDays} दिनों में याद दिलाएंगे',
			'sub.remaining.more_days' => ({required Object remainingDays}) => 'हम आपको ${remainingDays} दिनों में याद दिलाएंगे',
			'sub.remaining.expired' => 'रिमाइंडर समाप्त हो गया',
			'warnings.edit_restricted' => 'संपादन अभी उपलब्ध नहीं है',
			'notification.title' => 'जल्दी करें और सदस्यता अक्षम करें ❗',
			'notification.body' => ({required Object sub}) => 'हम आपको याद दिलाते हैं कि ${sub} को अक्षम करें इससे पहले कि बहुत देर हो जाए😏',
			_ => null,
		};
	}
}
