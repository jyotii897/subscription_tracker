import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sub_notifier_app/bloc/subscriptions/subscription_bloc.dart';
import 'package:sub_notifier_app/bloc/theme/theme_cubit.dart';
import 'package:sub_notifier_app/domain/repositories/subscription/subscription.dart';
import 'package:sub_notifier_app/domain/repositories/user/user_repository.dart';
import 'package:talker_flutter/talker_flutter.dart';

final getIt = GetIt.instance;
final talker = TalkerFlutter.init();

Future<void> setupLocator() async {
  getIt.registerSingleton(talker);
  final settingsBox = Hive.box('settings');
  getIt.registerSingleton(UserRepository(box: settingsBox));
  getIt.registerSingleton(ThemeCubit(getIt<UserRepository>()));

  final subBox = await Hive.openBox<SubscriptionModel>('subscriptions_box');
  getIt.registerSingleton(SubscriptionBloc(subBox));
}
