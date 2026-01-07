import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sub_notifier_app/bloc/subscriptions/subscription_bloc.dart';
import 'package:sub_notifier_app/constants/constants.dart';
import 'package:sub_notifier_app/extensions/extensions.dart';
import 'package:sub_notifier_app/i18n/strings.g.dart';
import 'package:sub_notifier_app/icons/sn_icons.dart';
import 'package:sub_notifier_app/locator/di.dart';
import 'package:sub_notifier_app/routes/router.dart';
import 'package:sub_notifier_app/theme/theme.dart';
import 'package:sub_notifier_app/widgets/widgets.dart';
import 'package:uuid/uuid.dart';

class AddSubscriptionScreen extends StatefulWidget {
  const AddSubscriptionScreen({super.key});

  @override
  State<AddSubscriptionScreen> createState() => _AddSubscriptionScreenState();
}

class _AddSubscriptionScreenState extends State<AddSubscriptionScreen> {
  final notificationChoices = DataConstants.reminderChoices;
  final icons = DataConstants.subIcons;
  final iconLabels = DataConstants.subIconLabels;

  final templates = [
    {'name': 'Netflix', 'icon': 'netflix.svg'},
    {'name': 'Spotify', 'icon': 'spotify.svg'},
    {'name': 'YouTube', 'icon': 'youtube.svg'},
    {'name': 'Amazon Prime', 'icon': 'amazon-prime.svg'},
    {'name': 'Disney+', 'icon': 'disney.svg'},
  ];

  String? imageUrl;

  int? notifyBeforeDays;

  DateTime? whenPay;

  final _subscriptionBloc = getIt<SubscriptionBloc>();

  final _nameController = TextEditingController();
  final _costController = TextEditingController();
  final _notificationController = TextEditingController();
  final _notesController = TextEditingController();
  final _dateController = TextEditingController();

  void _applyTemplate(Map<String, String> template) {
    _nameController.text = template['name']!;
    imageUrl = 'assets/images/services/${template['icon']}';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: PopScope(
        onPopInvokedWithResult: (didPop, result) =>
            _subscriptionBloc.add(LoadSubscriptions()),
        child: Scaffold(
          appBar: SnAppBar(
            title: Text(t.new_sub),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 15,
                      children: [
                         // Quick Add Templates
                        SizedBox(
                          height: 80,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: templates.length,
                            separatorBuilder: (_, __) => SizedBox(width: 15),
                            itemBuilder: (context, index) {
                              final template = templates[index];
                              return GestureDetector(
                                onTap: () => _applyTemplate(template),
                                child: Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).cardColor,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5,
                                      )
                                    ],
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: SvgPicture.asset(
                                    'assets/images/services/${template['icon']}',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        
                        Row(
                          spacing: 10,
                          children: [
                            InkWell(
                              onTap: () {
                                showIconChoices(context);
                              },
                              radius: 15,
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: (Theme.of(context).brightness ==
                                          Brightness.dark)
                                      ? ThemeColors.textIconPrimaryExtraLow
                                      : ThemeColors.textIconExtraLow,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: (imageUrl != null &&
                                        imageUrl!.contains('.svg'))
                                    ? Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: SvgPicture.asset(imageUrl!),
                                    )
                                    : (imageUrl != null)
                                        ? Image.file(
                                            File(imageUrl!),
                                            fit: BoxFit.fill,
                                          )
                                        : Icon(SnIcons.circle_add, size: 40),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    t.icon_title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium,
                                  ),
                                  Text(
                                    t.icon_descreption,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    maxLines: 4,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SnTextField(
                          controller: _nameController,
                          labelText: t.name,
                          maxLength: 16,
                        ),
                        SnTextField(
                          controller: _costController,
                          labelText: t.cost,
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                        ),
                        SnTextField(
                          controller: _dateController,
                          labelText: t.pay_date,
                          readOnly: true,
                          onTap: () async {
                            DateTime? dateTime = await showDatePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2099),
                              locale: Locale(t.lang, t.cc),
                            );
                            whenPay = dateTime;
                            if (dateTime != null) {
                              final formatted = dateTime.toLocalDate();
                              _dateController.text = formatted.toString();
                            }
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: SnTextField(
                                controller: _notificationController,
                                labelText: t.reminder,
                                readOnly: true,
                                onTap: () => showNotificationChoices(context),
                              ),
                            ),
                          ],
                        ),
                        SnTextField(
                          controller: _notesController,
                          labelText: t.notes,
                          maxLength: 185,
                          maxLines: 5,
                        ),
                        20.ph,
                      ],
                    ),
                  ),
                ),
                SnActionButton(
                  text: t.save,
                  onTap: () {
                    if (_nameController.text.isEmpty) return;
                    if (_dateController.text.isEmpty) return;
                    if (_notificationController.text.isEmpty) return;
                    if (notifyBeforeDays == null) return;

                    DateTime whenNotify = whenPay!.subtract(
                      Duration(days: notifyBeforeDays!),
                    );
                    
                    double cost = double.tryParse(_costController.text.replaceAll(',', '.')) ?? 0.0;

                    _subscriptionBloc.add(
                      CreateSubscription(
                        id: Uuid().v4(),
                        name: _nameController.text,
                        whenNotify: whenNotify,
                        whenPay: whenPay!,
                        imageUrl: imageUrl,
                        notes: _notesController.text,
                        cost: cost,
                      ),
                    );

                    router.pop();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showIconChoices(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          color: (Theme.of(context).brightness == Brightness.light)
              ? Colors.white
              : Colors.black,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              20.ph,
              Text(
                t.icons,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                shrinkWrap: true,
                itemCount: icons.length,
                itemBuilder: (context, i) {
                  if (i == 0) {
                    return InkWell(
                      onTap: () {
                        _pickGalleryImage();
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Icon(
                              SnIcons.circle_add,
                              size: 40,
                            ),
                          ),
                          Text(
                            t.upload,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    );
                  }
                  return SizedBox(
                    child: InkWell(
                      onTap: () {
                        imageUrl = 'assets/images/services/${icons[i]}';
                        router.pop();
                        setState(() {});
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/services/${icons[i]}',
                              width: 40,
                              height: 60,
                            ),
                          ),
                          Text(
                            iconLabels[i],
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> showNotificationChoices(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: (Theme.of(context).brightness == Brightness.light)
              ? Colors.white
              : Colors.black,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              20.ph,
              Text(
                t.reminder,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: notificationChoices.length,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  final choice = notificationChoices[i];
                  return ListTile(
                    onTap: () {
                      notifyBeforeDays = choice['days'];
                      _notificationController.text = choice['text'];
                      router.pop();
                    },
                    title: Text(
                      DataConstants.reminderChoices[i]['text'],
                    ),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }

  Future _pickGalleryImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    imageUrl = image.path;

    router.pop();
    setState(() {});
  }
}
