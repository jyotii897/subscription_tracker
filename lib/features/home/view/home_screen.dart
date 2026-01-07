import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:sub_notifier_app/bloc/subscriptions/subscription_bloc.dart';
import 'package:sub_notifier_app/extensions/extensions.dart';
import 'package:sub_notifier_app/features/home/widgets/spending_chart.dart';
import 'package:sub_notifier_app/i18n/strings.g.dart';
import 'package:sub_notifier_app/locator/di.dart';
import 'package:sub_notifier_app/routes/router.dart';
import 'package:sub_notifier_app/theme/theme_colors.dart';
import 'package:sub_notifier_app/theme/theme_text.dart';
import 'package:sub_notifier_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _subscriptionBloc = getIt<SubscriptionBloc>();

  @override
  void initState() {
    _subscriptionBloc.add(LoadSubscriptions());
    super.initState();
  }

  List<Color> _getGradient(String name) {
    final n = name.toLowerCase();
    if (n.contains('netflix')) return ThemeColors.netflixGradient;
    if (n.contains('spotify')) return ThemeColors.spotifyGradient;
    if (n.contains('youtube')) return ThemeColors.youtubeGradient;
    return ThemeColors.defaultGradient;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SnAppBar(
        title: Text(t.my_subs),
      ),
      body: BlocBuilder<SubscriptionBloc, SubscriptionState>(
        bloc: _subscriptionBloc,
        builder: (context, state) {
          if (state is SubscriptionsLoaded) {
            if (state.subscriptions.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Lottie.asset(
                      'assets/lottie/SplashLight.json', // Placeholder for empty state
                      height: 200,
                    ),
                    Text(
                      t.kNull,
                      style: ThemeText.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }

            // Create a sorted copy
            final sortedSubs = List.of(state.subscriptions)
              ..sort((a, b) => a.whenNotify.compareTo(b.whenNotify));

            return ListView(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 100), // Bottom padding for FAB
              children: [
                SpendingChart(subscriptions: sortedSubs),
                SizedBox(height: 20),
                ...sortedSubs.map((sub) {
                  final gradient = _getGradient(sub.name);
                   final remainingDays =
                      sub.whenPay.difference(DateTime.now()).inDays;
                  String remainingText = '';
                  if (remainingDays >= 0) {
                    switch (remainingDays) {
                      case 0:
                        remainingText = t.sub.remaining.today;
                      case 1:
                        remainingText = t.sub.remaining.tomorrow;
                      case 2:
                        remainingText = t.sub.remaining.two_days;
                      case 3:
                      case 4:
                        remainingText = t.sub.remaining
                            .three_four_days(remainingDays: remainingDays);
                      default:
                        remainingText = t.sub.remaining
                            .more_days(remainingDays: remainingDays);
                    }
                  } else {
                    remainingText = t.sub.remaining.expired;
                  }

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Dismissible(
                      key: Key(sub.id),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        _subscriptionBloc.add(RemoveSubscription(id: sub.id));
                      },
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.delete, color: Colors.white, size: 30),
                      ),
                      child: InkWell(
                        onTap: () {
                          router.pushNamed(
                            'sub',
                            pathParameters: {'id': sub.id},
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 120,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: gradient,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: gradient.first.withOpacity(0.4),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              // Icon Background
                              Positioned(
                                right: -20,
                                bottom: -20,
                                child: Opacity(
                                  opacity: 0.2,
                                  child: (sub.imageUrl != null && sub.imageUrl!.contains('.svg'))
                                      ? SvgPicture.asset(sub.imageUrl!, width: 120)
                                      : (sub.imageUrl != null)
                                          ? Image.file(File(sub.imageUrl!), width: 120)
                                          : Icon(Icons.subscriptions, size: 120, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            sub.name,
                                            style: ThemeText.headlineSmall.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        if (sub.cost > 0)
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                            decoration: BoxDecoration(
                                              color: Colors.black26,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              '\$${sub.cost.toStringAsFixed(2)}',
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          t.charge_off(whenPay: sub.whenPay.toLocalDate()),
                                          style: TextStyle(color: Colors.white70, fontSize: 14),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          remainingText,
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ],
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
