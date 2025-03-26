import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:uniun/core/widgets/dialogs.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';


/// Shows a dialog which allows typing/search for a user
// void showUserInputDialog(BuildContext context, {required String title, required void Function(PersonView) onUserSelected}) async {
//   Future<String?> onSubmitted({PersonView? payload, String? value}) async {
//     if (payload != null) {
//       onUserSelected(payload);
//       Navigator.of(context).pop();
//     } else if (value != null) {
//       // Normalize the username
//       final String? normalizedUsername = await getLemmyUser(value);
//       if (normalizedUsername != null) {
//         try {
//           Account? account = await fetchActiveProfileAccount();
//           final GetPersonDetailsResponse getPersonDetailsResponse = await LemmyClient.instance.lemmyApiV3.run(GetPersonDetails(
//             auth: account?.jwt,
//             username: normalizedUsername,
//           ));

//           onUserSelected(getPersonDetailsResponse.personView);

//           Navigator.of(context).pop();
//         } catch (e) {
//           return AppLocalizations.of(context)!.unableToFindUser;
//         }
//       } else {
//         return AppLocalizations.of(context)!.unableToFindUser;
//       }
//     }
//     return null;
//   }

//   showInputDialog<PersonView>(
//     context: context,
//     title: title,
//     inputLabel: AppLocalizations.of(context)!.username,
//     onSubmitted: onSubmitted,
//     getSuggestions: getUserSuggestions,
//     suggestionBuilder: (payload) => buildUserSuggestionWidget(context, payload),
//   );
// }

// Future<Iterable<PersonView>> getUserSuggestions(String query) async {
//   if (query.isNotEmpty != true) {
//     return const Iterable.empty();
//   }
//   Account? account = await fetchActiveProfileAccount();
//   final SearchResponse searchResponse = await LemmyClient.instance.lemmyApiV3.run(Search(
//     q: query,
//     auth: account?.jwt,
//     type: SearchType.users,
//     limit: 20,
//   ));
//   return searchResponse.users;
// }

// Widget buildUserSuggestionWidget(BuildContext context, PersonView payload, {void Function(PersonView)? onSelected}) {
//   return Tooltip(
//     message: generateUserFullName(context, payload.person.name, fetchInstanceNameFromUrl(payload.person.actorId)),
//     preferBelow: false,
//     child: InkWell(
//       onTap: onSelected == null ? null : () => onSelected(payload),
//       child: ListTile(
//         leading: UserAvatar(person: payload.person),
//         title: Text(
//           payload.person.displayName ?? payload.person.name,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         subtitle: Semantics(
//           excludeSemantics: true,
//           child: TextScroll(
//             generateUserFullName(context, payload.person.name, fetchInstanceNameFromUrl(payload.person.actorId)),
//             delayBefore: const Duration(seconds: 2),
//             pauseBetween: const Duration(seconds: 3),
//             velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// /// Shows a dialog which allows typing/search for a community
// void showCommunityInputDialog(BuildContext context, {required String title, required void Function(CommunityView) onCommunitySelected, Iterable<CommunityView>? emptySuggestions}) async {
//   try {
//     final AccountState accountState = context.read<AccountBloc>().state;
//     emptySuggestions ??= accountState.subsciptions;
//     emptySuggestions = prioritizeFavorites(emptySuggestions.toList(), accountState.favorites);
//   } catch (e) {
//     // If we can't read the AccountBloc here, for whatever reason, it's ok. No need for subscriptions.
//   }

//   Future<String?> onSubmitted({CommunityView? payload, String? value}) async {
//     if (payload != null) {
//       onCommunitySelected(payload);
//       Navigator.of(context).pop();
//     } else if (value != null) {
//       // Normalize the community name
//       final String? normalizedCommunity = await getLemmyCommunity(value);
//       if (normalizedCommunity != null) {
//         try {
//           Account? account = await fetchActiveProfileAccount();
//           final GetCommunityResponse getCommunityResponse = await LemmyClient.instance.lemmyApiV3.run(GetCommunity(
//             auth: account?.jwt,
//             name: normalizedCommunity,
//           ));

//           onCommunitySelected(getCommunityResponse.communityView);

//           Navigator.of(context).pop();
//         } catch (e) {
//           return AppLocalizations.of(context)!.unableToFindCommunity;
//         }
//       } else {
//         return AppLocalizations.of(context)!.unableToFindCommunity;
//       }
//     }
//     return null;
//   }

//   showInputDialog<CommunityView>(
//     context: context,
//     title: title,
//     inputLabel: AppLocalizations.of(context)!.community,
//     onSubmitted: onSubmitted,
//     getSuggestions: (query) => getCommunitySuggestions(context, query, emptySuggestions),
//     suggestionBuilder: (communityView) => buildCommunitySuggestionWidget(context, communityView),
//   );
// }

// Future<Iterable<CommunityView>> getCommunitySuggestions(BuildContext context, String query, Iterable<CommunityView>? emptySuggestions) async {
//   if (query.isNotEmpty != true) {
//     return emptySuggestions ?? const Iterable.empty();
//   }
//   Account? account = await fetchActiveProfileAccount();
//   final SearchResponse searchResponse = await LemmyClient.instance.lemmyApiV3.run(Search(
//     q: query,
//     auth: account?.jwt,
//     type: SearchType.communities,
//     limit: 20,
//     sort: SortType.topAll,
//   ));

//   List<CommunityView>? favorites;
//   if (context.mounted) {
//     try {
//       favorites = context.read<AccountBloc>().state.favorites;
//     } catch (e) {
//       // Don't worry if we can't fetch favorites
//     }
//   }

//   return prioritizeFavorites(searchResponse.communities.toList(), favorites) ?? const Iterable.empty();
// }

// Widget buildCommunitySuggestionWidget(BuildContext context, CommunityView payload, {void Function(CommunityView)? onSelected}) {
//   final AppLocalizations l10n = AppLocalizations.of(GlobalContext.context)!;

//   return Tooltip(
//     message: generateCommunityFullName(context, payload.community.name, fetchInstanceNameFromUrl(payload.community.actorId)),
//     preferBelow: false,
//     child: InkWell(
//       onTap: onSelected == null ? null : () => onSelected(payload),
//       child: ListTile(
//         leading: CommunityAvatar(community: payload.community),
//         title: Text(
//           payload.community.title,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         subtitle: Semantics(
//           excludeSemantics: true,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextScroll(
//                 generateCommunityFullName(context, payload.community.name, fetchInstanceNameFromUrl(payload.community.actorId)),
//                 delayBefore: const Duration(seconds: 2),
//                 pauseBetween: const Duration(seconds: 3),
//                 velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
//               ),
//               Row(
//                 children: [
//                   const Icon(Icons.people_rounded, size: 16),
//                   const SizedBox(width: 5),
//                   Text(formatNumberToK(payload.counts.subscribers)),
//                   if (payload.subscribed != SubscribedType.notSubscribed) ...[
//                     Text(' · ${switch (payload.subscribed) {
//                       SubscribedType.pending => l10n.pending,
//                       SubscribedType.subscribed => l10n.subscribed,
//                       _ => '',
//                     }}'),
//                   ],
//                   if (_getFavoriteStatus(context, payload.community)) ...const [
//                     Text(' · '),
//                     Icon(Icons.star_rounded, size: 15),
//                   ],
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// /// Checks whether the current community is a favorite of the current user
// bool _getFavoriteStatus(BuildContext context, Community community) {
//   final AccountState accountState = context.read<AccountBloc>().state;
//   return accountState.favorites.any((communityView) => communityView.community.id == community.id);
// }

// /// Shows a dialog which allows typing/search for an instance
// void showInstanceInputDialog(
//   BuildContext context, {
//   required String title,
//   required void Function(InstanceWithFederationState) onInstanceSelected,
//   Iterable<InstanceWithFederationState>? emptySuggestions,
// }) async {
//   Account? account = await fetchActiveProfileAccount();

//   GetFederatedInstancesResponse getFederatedInstancesResponse = await LemmyClient.instance.lemmyApiV3.run(
//     GetFederatedInstances(
//       auth: account?.jwt,
//     ),
//   );

//   Future<String?> onSubmitted({InstanceWithFederationState? payload, String? value}) async {
//     if (payload != null) {
//       onInstanceSelected(payload);
//       Navigator.of(context).pop();
//     } else if (value != null) {
//       final InstanceWithFederationState? instance = getFederatedInstancesResponse.federatedInstances?.linked.firstWhereOrNull((InstanceWithFederationState instance) => instance.domain == value);

//       if (instance != null) {
//         onInstanceSelected(instance);
//         Navigator.of(context).pop();
//       } else {
//         return AppLocalizations.of(context)!.unableToFindInstance;
//       }
//     }

//     return null;
//   }

//   if (context.mounted) {
//     showInputDialog<InstanceWithFederationState>(
//       context: context,
//       title: title,
//       inputLabel: AppLocalizations.of(context)!.instance,
//       onSubmitted: onSubmitted,
//       getSuggestions: (query) => getInstanceSuggestions(query, getFederatedInstancesResponse.federatedInstances?.linked),
//       suggestionBuilder: (payload) => buildInstanceSuggestionWidget(payload, context: context),
//     );
//   }
// }

// Future<Iterable<InstanceWithFederationState>> getInstanceSuggestions(String query, Iterable<InstanceWithFederationState>? emptySuggestions) async {
//   if (query.isEmpty) {
//     return const Iterable.empty();
//   }

//   Iterable<InstanceWithFederationState> filteredInstances = emptySuggestions?.where((InstanceWithFederationState instance) => instance.domain.contains(query)) ?? const Iterable.empty();
//   return filteredInstances;
// }

// Widget buildInstanceSuggestionWidget(payload, {void Function(Instance)? onSelected, BuildContext? context}) {
//   final theme = Theme.of(context!);

//   return Tooltip(
//     message: '${payload.domain}',
//     preferBelow: false,
//     child: InkWell(
//       onTap: onSelected == null ? null : () => onSelected(payload),
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundColor: theme.colorScheme.secondaryContainer,
//           maxRadius: 16.0,
//           child: Text(
//             payload.domain[0].toUpperCase(),
//             semanticsLabel: '',
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16.0,
//             ),
//           ),
//         ),
//         title: Text(
//           payload.domain,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),
//     ),
//   );
// }

// /// Shows a dialog which allows typing/search for an language
// void showLanguageInputDialog(BuildContext context, {required String title, required void Function(Language) onLanguageSelected, Iterable<Language>? emptySuggestions}) async {
//   AuthState state = context.read<AuthBloc>().state;
//   final AppLocalizations l10n = AppLocalizations.of(context)!;

//   List<Language> languages = [Language(id: -1, code: '', name: l10n.noLanguage), ...(state.getSiteResponse?.allLanguages ?? [])];

//   Future<String?> onSubmitted({Language? payload, String? value}) async {
//     if (payload != null) {
//       onLanguageSelected(payload);
//       Navigator.of(context).pop();
//     } else if (value != null) {
//       final Language? language = languages.firstWhereOrNull((Language language) => language.name.toLowerCase().contains(value.toLowerCase()));

//       if (language != null) {
//         onLanguageSelected(language);
//         Navigator.of(context).pop();
//       } else {
//         return AppLocalizations.of(context)!.unableToFindLanguage;
//       }
//     }

//     return null;
//   }

//   if (context.mounted) {
//     showInputDialog<Language>(
//       context: context,
//       title: title,
//       inputLabel: AppLocalizations.of(context)!.language,
//       onSubmitted: onSubmitted,
//       getSuggestions: (query) => getLanguageSuggestions(context, query, languages),
//       suggestionBuilder: (payload) => buildLanguageSuggestionWidget(payload, context: context),
//     );
//   }
// }

// Future<Iterable<Language>> getLanguageSuggestions(BuildContext context, String query, Iterable<Language>? emptySuggestions) async {
//   final Locale currentLocale = Localizations.localeOf(context);

//   final Language? currentLanguage = emptySuggestions?.firstWhereOrNull((Language l) => l.code == currentLocale.languageCode);
//   if (currentLanguage != null && (emptySuggestions?.length ?? 0) >= 2) {
//     emptySuggestions = emptySuggestions?.toList()
//       ?..remove(currentLanguage)
//       ..insert(2, currentLanguage);
//   }

//   if (query.isEmpty) {
//     return emptySuggestions ?? [];
//   }

//   Iterable<Language> filteredLanguages = emptySuggestions?.where((Language language) => language.name.toLowerCase().contains(query.toLowerCase())) ?? const Iterable.empty();
//   return filteredLanguages;
// }

// Widget buildLanguageSuggestionWidget(payload, {void Function(Language)? onSelected, BuildContext? context}) {
//   return Tooltip(
//     message: '${payload.name}',
//     preferBelow: false,
//     child: InkWell(
//       onTap: onSelected == null ? null : () => onSelected(payload),
//       child: ListTile(
//         title: Text(
//           payload.name,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),
//     ),
//   );
// }

// /// Shows a dialog which allows typing/search for a keyword
// void showKeywordInputDialog(BuildContext context, {required String title, required void Function(String) onKeywordSelected}) async {
//   final l10n = AppLocalizations.of(context)!;

//   Future<String?> onSubmitted({String? payload, String? value}) async {
//     String? formattedPayload = payload?.trim();
//     String? formattedValue = value?.trim();

//     if (formattedPayload != null && formattedPayload.isNotEmpty) {
//       onKeywordSelected(formattedPayload);
//       Navigator.of(context).pop();
//     } else if (formattedValue != null && formattedValue.isNotEmpty) {
//       onKeywordSelected(formattedValue);
//       Navigator.of(context).pop();
//     }

//     return null;
//   }

//   if (context.mounted) {
//     showInputDialog<String>(
//       context: context,
//       title: title,
//       inputLabel: l10n.addKeywordFilter,
//       onSubmitted: onSubmitted,
//       getSuggestions: (query) => [] as Future<Iterable<String>>,
//       suggestionBuilder: (payload) => Container(),
//     );
//   }
// }

/// Shows a dialog which takes input and offers suggestions
void showInputDialog<T>({
  required BuildContext context,
  required String title,
  required String inputLabel,
  required Future<String?> Function({T? payload, String? value}) onSubmitted,
  required Future<Iterable<T>> Function(String query) getSuggestions,
  required Widget Function(T payload) suggestionBuilder,
}) async {
  final textController = TextEditingController();
  // Capture our content widget's setState function so we can call it outside the widget
  StateSetter? contentWidgetSetState;
  String? contentWidgetError;

  await showThunderDialog(
    context: context,
    title: title,
    onSecondaryButtonPressed: (dialogContext) => Navigator.of(dialogContext).pop(),
    secondaryButtonText: AppLocalizations.of(context)!.cancel,
    primaryButtonInitialEnabled: false,
    onPrimaryButtonPressed: (dialogContext, setPrimaryButtonEnabled) async {
      setPrimaryButtonEnabled(false);
      final String? submitError = await onSubmitted(value: textController.text);
      contentWidgetSetState?.call(() => contentWidgetError = submitError);
    },
    primaryButtonText: AppLocalizations.of(context)!.ok,
    // Use a stateful widget for the content so we can update the error message
    contentWidgetBuilder: (setPrimaryButtonEnabled) => StatefulBuilder(builder: (context, setState) {
      contentWidgetSetState = setState;
      return SizedBox(
        width: min(MediaQuery.of(context).size.width, 700),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TypeAheadField<T>(
              textFieldConfiguration: TextFieldConfiguration(
                controller: textController,
                onChanged: (value) {
                  setPrimaryButtonEnabled(value.trim().isNotEmpty);
                  setState(() => contentWidgetError = null);
                },
                autofocus: true,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(),
                  labelText: inputLabel,
                  errorText: contentWidgetError,
                ),
                onSubmitted: (text) async {
                  setPrimaryButtonEnabled(false);
                  final String? submitError = await onSubmitted(value: text);
                  setState(() => contentWidgetError = submitError);
                },
              ),
              suggestionsCallback: getSuggestions,
              itemBuilder: (context, payload) => suggestionBuilder(payload),
              onSuggestionSelected: (payload) async {
                setPrimaryButtonEnabled(false);
                final String? submitError = await onSubmitted(payload: payload);
                setState(() => contentWidgetError = submitError);
              },
              hideOnEmpty: true,
              hideOnLoading: true,
              hideOnError: true,
            ),
          ],
        ),
      );
    }),
  );
}
