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
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get lang => 'fr';
	@override String get cc => 'FR';
	@override String get welcome => 'Bienvenue';
	@override String get keep_track => 'Suivre vos abonnements est maintenant beaucoup plus facile';
	@override String get go => 'Aller';
	@override String get my_subs => 'Mes abonnements';
	@override String get settings => 'Paramètres';
	@override String get add => 'Ajouter';
	@override String get kNull => 'Il n\'y a rien ici';
	@override String get theme => 'Thème';
	@override String get icons => 'Icônes';
	@override String get upload => 'Téléverser';
	@override String get language => 'Langue';
	@override String get icon_title => 'Icône d’abonnement';
	@override String get icon_descreption => 'Vous pouvez choisir l’une des icônes d’abonnement proposées ou téléverser la vôtre';
	@override String get new_sub => 'Nouvel abonnement';
	@override String get name => 'Nom';
	@override String get cost => 'Coût';
	@override String get pay_date => 'Date de paiement';
	@override String get reminder => 'Rappel';
	@override String get when_remind => 'Rappeler';
	@override String get notes => 'Notes';
	@override String get save => 'Enregistrer';
	@override String get about => 'Plus de détails';
	@override String charge_off({required Object whenPay}) => 'Débit : ${whenPay}';
	@override String get delete => 'Supprimer';
	@override String get edit => 'Modifier';
	@override String get editing_mode => 'Mode édition';
	@override String get changes_alert => 'Voulez-vous appliquer les modifications ?';
	@override String get cancel => 'Annuler';
	@override String get kContinue => 'Continuer';
	@override late final _TranslationsRemindBeforeFr remind_before = _TranslationsRemindBeforeFr._(_root);
	@override late final _TranslationsSubFr sub = _TranslationsSubFr._(_root);
	@override late final _TranslationsWarningsFr warnings = _TranslationsWarningsFr._(_root);
	@override late final _TranslationsNotificationFr notification = _TranslationsNotificationFr._(_root);
}

// Path: remind_before
class _TranslationsRemindBeforeFr implements TranslationsRemindBeforeEn {
	_TranslationsRemindBeforeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get day => 'Rappeler 1 jour avant';
	@override String get three_days => 'Rappeler 3 jours avant';
	@override String get week => 'Rappeler 1 semaine avant';
	@override String get month => 'Rappeler 1 mois avant';
}

// Path: sub
class _TranslationsSubFr implements TranslationsSubEn {
	_TranslationsSubFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSubRemainingFr remaining = _TranslationsSubRemainingFr._(_root);
}

// Path: warnings
class _TranslationsWarningsFr implements TranslationsWarningsEn {
	_TranslationsWarningsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get edit_restricted => 'L\'édition n\'est pas encore disponible';
}

// Path: notification
class _TranslationsNotificationFr implements TranslationsNotificationEn {
	_TranslationsNotificationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dépêchez-vous de désactiver l’abonnement ❗';
	@override String body({required Object sub}) => 'Nous vous rappelons de désactiver ${sub} avant qu’il ne soit trop tard 😏';
}

// Path: sub.remaining
class _TranslationsSubRemainingFr implements TranslationsSubRemainingEn {
	_TranslationsSubRemainingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get today => 'Nous vous avons rappelé aujourd’hui';
	@override String get tomorrow => 'Nous vous rappellerons demain';
	@override String get two_days => 'Nous vous rappellerons après-demain';
	@override String three_four_days({required Object remainingDays}) => 'Nous vous rappellerons dans ${remainingDays} jours';
	@override String more_days({required Object remainingDays}) => 'Nous vous rappellerons dans ${remainingDays} jours';
	@override String get expired => 'Rappel expiré';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'lang' => 'fr',
			'cc' => 'FR',
			'welcome' => 'Bienvenue',
			'keep_track' => 'Suivre vos abonnements est maintenant beaucoup plus facile',
			'go' => 'Aller',
			'my_subs' => 'Mes abonnements',
			'settings' => 'Paramètres',
			'add' => 'Ajouter',
			'kNull' => 'Il n\'y a rien ici',
			'theme' => 'Thème',
			'icons' => 'Icônes',
			'upload' => 'Téléverser',
			'language' => 'Langue',
			'icon_title' => 'Icône d’abonnement',
			'icon_descreption' => 'Vous pouvez choisir l’une des icônes d’abonnement proposées ou téléverser la vôtre',
			'new_sub' => 'Nouvel abonnement',
			'name' => 'Nom',
			'cost' => 'Coût',
			'pay_date' => 'Date de paiement',
			'reminder' => 'Rappel',
			'when_remind' => 'Rappeler',
			'notes' => 'Notes',
			'save' => 'Enregistrer',
			'about' => 'Plus de détails',
			'charge_off' => ({required Object whenPay}) => 'Débit : ${whenPay}',
			'delete' => 'Supprimer',
			'edit' => 'Modifier',
			'editing_mode' => 'Mode édition',
			'changes_alert' => 'Voulez-vous appliquer les modifications ?',
			'cancel' => 'Annuler',
			'kContinue' => 'Continuer',
			'remind_before.day' => 'Rappeler 1 jour avant',
			'remind_before.three_days' => 'Rappeler 3 jours avant',
			'remind_before.week' => 'Rappeler 1 semaine avant',
			'remind_before.month' => 'Rappeler 1 mois avant',
			'sub.remaining.today' => 'Nous vous avons rappelé aujourd’hui',
			'sub.remaining.tomorrow' => 'Nous vous rappellerons demain',
			'sub.remaining.two_days' => 'Nous vous rappellerons après-demain',
			'sub.remaining.three_four_days' => ({required Object remainingDays}) => 'Nous vous rappellerons dans ${remainingDays} jours',
			'sub.remaining.more_days' => ({required Object remainingDays}) => 'Nous vous rappellerons dans ${remainingDays} jours',
			'sub.remaining.expired' => 'Rappel expiré',
			'warnings.edit_restricted' => 'L\'édition n\'est pas encore disponible',
			'notification.title' => 'Dépêchez-vous de désactiver l’abonnement ❗',
			'notification.body' => ({required Object sub}) => 'Nous vous rappelons de désactiver ${sub} avant qu’il ne soit trop tard 😏',
			_ => null,
		};
	}
}
