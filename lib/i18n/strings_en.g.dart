///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'en'
	String get lang => 'en';

	/// en: 'US'
	String get cc => 'US';

	/// en: 'Welcome'
	String get welcome => 'Welcome';

	/// en: 'Keeping track of your subscriptions is now much easier'
	String get keep_track => 'Keeping track of your subscriptions is now much easier';

	/// en: 'Go'
	String get go => 'Go';

	/// en: 'My subscriptions'
	String get my_subs => 'My subscriptions';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Add'
	String get add => 'Add';

	/// en: 'There's nothing here'
	String get kNull => 'There\'s nothing here';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Icons'
	String get icons => 'Icons';

	/// en: 'Upload'
	String get upload => 'Upload';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Subscription icon'
	String get icon_title => 'Subscription icon';

	/// en: 'You can choose one of the suggested subscription icons or upload your own'
	String get icon_descreption => 'You can choose one of the suggested subscription icons or upload your own';

	/// en: 'New subscription'
	String get new_sub => 'New subscription';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Cost'
	String get cost => 'Cost';

	/// en: 'Payment date'
	String get pay_date => 'Payment date';

	/// en: 'Reminder'
	String get reminder => 'Reminder';

	/// en: 'We will Remind you in'
	String get when_remind => 'We will Remind you in';

	/// en: 'Notes'
	String get notes => 'Notes';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'More details'
	String get about => 'More details';

	/// en: 'Pay on $whenPay'
	String charge_off({required Object whenPay}) => 'Pay on ${whenPay}';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Editing Mode'
	String get editing_mode => 'Editing Mode';

	/// en: 'Do you want to save changes?'
	String get changes_alert => 'Do you want to save changes?';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Save'
	String get kContinue => 'Save';

	late final TranslationsRemindBeforeEn remind_before = TranslationsRemindBeforeEn._(_root);
	late final TranslationsSubEn sub = TranslationsSubEn._(_root);
	late final TranslationsWarningsEn warnings = TranslationsWarningsEn._(_root);
	late final TranslationsNotificationEn notification = TranslationsNotificationEn._(_root);
}

// Path: remind_before
class TranslationsRemindBeforeEn {
	TranslationsRemindBeforeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Remind 1 day before'
	String get day => 'Remind 1 day before';

	/// en: 'Remind 3 days before'
	String get three_days => 'Remind 3 days before';

	/// en: 'Remind 1 week before'
	String get week => 'Remind 1 week before';

	/// en: 'Remind 1 month before'
	String get month => 'Remind 1 month before';
}

// Path: sub
class TranslationsSubEn {
	TranslationsSubEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSubRemainingEn remaining = TranslationsSubRemainingEn._(_root);
}

// Path: warnings
class TranslationsWarningsEn {
	TranslationsWarningsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Editing is not available yet'
	String get edit_restricted => 'Editing is not available yet';
}

// Path: notification
class TranslationsNotificationEn {
	TranslationsNotificationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hurry up and disable Subscription ❗'
	String get title => 'Hurry up and disable Subscription ❗';

	/// en: 'We remind you to disable $sub before it's too late😏'
	String body({required Object sub}) => 'We remind you to disable ${sub} before it\'s too late😏';
}

// Path: sub.remaining
class TranslationsSubRemainingEn {
	TranslationsSubRemainingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'We Reminded you today'
	String get today => 'We Reminded you today';

	/// en: 'We'll remind you tomorrow'
	String get tomorrow => 'We\'ll remind you tomorrow';

	/// en: 'We'll remind you the day after tomorrow'
	String get two_days => 'We\'ll remind you the day after tomorrow';

	/// en: 'We'll remind you in $remainingDays days'
	String three_four_days({required Object remainingDays}) => 'We\'ll remind you in ${remainingDays} days';

	/// en: 'We'll remind you in $remainingDays days'
	String more_days({required Object remainingDays}) => 'We\'ll remind you in ${remainingDays} days';

	/// en: 'Reminder expired'
	String get expired => 'Reminder expired';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'lang' => 'en',
			'cc' => 'US',
			'welcome' => 'Welcome',
			'keep_track' => 'Keeping track of your subscriptions is now much easier',
			'go' => 'Go',
			'my_subs' => 'My subscriptions',
			'settings' => 'Settings',
			'add' => 'Add',
			'kNull' => 'There\'s nothing here',
			'theme' => 'Theme',
			'icons' => 'Icons',
			'upload' => 'Upload',
			'language' => 'Language',
			'icon_title' => 'Subscription icon',
			'icon_descreption' => 'You can choose one of the suggested subscription icons or upload your own',
			'new_sub' => 'New subscription',
			'name' => 'Name',
			'cost' => 'Cost',
			'pay_date' => 'Payment date',
			'reminder' => 'Reminder',
			'when_remind' => 'We will Remind you in',
			'notes' => 'Notes',
			'save' => 'Save',
			'about' => 'More details',
			'charge_off' => ({required Object whenPay}) => 'Pay on ${whenPay}',
			'delete' => 'Delete',
			'edit' => 'Edit',
			'editing_mode' => 'Editing Mode',
			'changes_alert' => 'Do you want to save changes?',
			'cancel' => 'Cancel',
			'kContinue' => 'Save',
			'remind_before.day' => 'Remind 1 day before',
			'remind_before.three_days' => 'Remind 3 days before',
			'remind_before.week' => 'Remind 1 week before',
			'remind_before.month' => 'Remind 1 month before',
			'sub.remaining.today' => 'We Reminded you today',
			'sub.remaining.tomorrow' => 'We\'ll remind you tomorrow',
			'sub.remaining.two_days' => 'We\'ll remind you the day after tomorrow',
			'sub.remaining.three_four_days' => ({required Object remainingDays}) => 'We\'ll remind you in ${remainingDays} days',
			'sub.remaining.more_days' => ({required Object remainingDays}) => 'We\'ll remind you in ${remainingDays} days',
			'sub.remaining.expired' => 'Reminder expired',
			'warnings.edit_restricted' => 'Editing is not available yet',
			'notification.title' => 'Hurry up and disable Subscription ❗',
			'notification.body' => ({required Object sub}) => 'We remind you to disable ${sub} before it\'s too late😏',
			_ => null,
		};
	}
}
