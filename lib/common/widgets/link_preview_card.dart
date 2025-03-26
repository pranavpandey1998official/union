import 'dart:ui';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:link_preview_generator/link_preview_generator.dart';
import 'package:uniun/common/emuns/view_mode.dart';
import 'package:uniun/common/widgets/image_preview.dart';
import 'package:uniun/core/bloc/uniun/uniun_bloc.dart';
import 'package:uniun/core/bloc/uniun/uniun_state.dart';

class LinkPreviewCard extends StatelessWidget {
  const LinkPreviewCard({
    super.key,
    this.originURL,
    this.mediaURL,
    this.mediaHeight,
    this.mediaWidth,
    this.scrapeMissingPreviews = false,
    this.showFullHeightImages = false,
    this.edgeToEdgeImages = false,
    this.viewMode = ViewMode.comfortable,
    this.postId,
    required this.hideNsfw,
    required this.isUserLoggedIn,
    required this.markPostReadOnMediaView,
    this.read,
  });

  final int? postId;

  final String? originURL;
  final String? mediaURL;

  final double? mediaHeight;
  final double? mediaWidth;

  final bool scrapeMissingPreviews;
  final bool showFullHeightImages;

  final bool edgeToEdgeImages;

  final bool markPostReadOnMediaView;
  final bool isUserLoggedIn;

  final bool hideNsfw;

  final ViewMode viewMode;

  final bool? read;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final UniunState uniunState = context.read<UniunBloc>().state;

    if ((mediaURL != null || originURL != null) && viewMode == ViewMode.comfortable) {
      return Semantics(
        label: originURL ?? mediaURL,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((edgeToEdgeImages ? 0 : 12)),
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            fit: StackFit.passthrough,
            children: [
              if (mediaURL != null) ...[
                hideNsfw
                    ? ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                        child: ImagePreview(
                          read: read,
                          url: mediaURL ?? originURL!,
                          height: showFullHeightImages ? mediaHeight : 150,
                          width: mediaWidth ?? MediaQuery.of(context).size.width - (edgeToEdgeImages ? 0 : 24),
                          isExpandable: false,
                        ),
                      )
                    : ImagePreview(
                        read: read,
                        url: mediaURL ?? originURL!,
                        height: showFullHeightImages ? mediaHeight : 150,
                        width: mediaWidth ?? MediaQuery.of(context).size.width - (edgeToEdgeImages ? 0 : 24),
                        isExpandable: false,
                      )
              ] else if (scrapeMissingPreviews)
                SizedBox(
                  height: 150,
                  // This is used for external links when Lemmy does not provide a preview thumbnail
                  // and when the user has enabled external scraping.
                  // This is only used in comfortable mode.
                  child: hideNsfw
                      ? ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                          child: LinkPreviewGenerator(
                            opacity: read == true ? 0.55 : 1,
                            link: originURL!,
                            showBody: false,
                            showTitle: false,
                            cacheDuration: Duration.zero,
                          ))
                      : LinkPreviewGenerator(
                          opacity: read == true ? 0.55 : 1,
                          link: originURL!,
                          showBody: false,
                          showTitle: false,
                          cacheDuration: Duration.zero,
                        ),
                ),
              if (hideNsfw)
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
                  child: const Column(
                    children: [
                      Icon(Icons.warning_rounded, size: 55),
                      Text(
                        "NSFW - Tap to reveal",
                        textScaler: TextScaler.linear(1.5),
                      ),
                    ],
                  ),
                ),
              linkInformation(context),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: theme.colorScheme.primary.withOpacity(0.4),
                    onTap: () => triggerOnTap(context),
                    onLongPress: originURL != null ? () => {} : null,
                    borderRadius: BorderRadius.circular((edgeToEdgeImages ? 0 : 12)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if ((mediaURL != null || originURL != null) && viewMode == ViewMode.compact) {
      return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            mediaURL != null
                ? hideNsfw
                    ? ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                        child: ImagePreview(
                          read: read,
                          url: mediaURL!,
                          height: 75,
                          width: 75,
                          isExpandable: false,
                        ),
                      )
                    : ImagePreview(
                        read: read,
                        url: mediaURL!,
                        height: 75,
                        width: 75,
                        isExpandable: false,
                      )
                : scrapeMissingPreviews
                    ? SizedBox(
                        height: 75,
                        width: 75,
                        // This is used for external links when Lemmy does not provide a preview thumbnail
                        // and when the user has enabled external scraping.
                        // This is only used in compact mode.
                        child: hideNsfw
                            ? ImageFiltered(
                                imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                                child: LinkPreviewGenerator(
                                  opacity: read == true ? 0.55 : 1,
                                  link: originURL!,
                                  showBody: false,
                                  showTitle: false,
                                  cacheDuration: Duration.zero,
                                ))
                            : LinkPreviewGenerator(
                                opacity: read == true ? 0.55 : 1,
                                link: originURL!,
                                showBody: false,
                                showTitle: false,
                                cacheDuration: Duration.zero,
                              ),
                      )
                    // This is used for link previews when no thumbnail comes from Lemmy
                    // and the user has disabled scraping. This is only in compact mode.
                    : Container(
                        height: 75,
                        width: 75,
                        color: theme.cardColor.darken(5),
                        child: Icon(
                          hideNsfw ? null : Icons.language,
                          color: theme.colorScheme.onSecondaryContainer.withOpacity(read == true ? 0.55 : 1.0),
                        ),
                      ),
            if (hideNsfw)
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Icon(Icons.warning_rounded, size: 30),
                  ],
                ),
              ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: theme.colorScheme.primary.withOpacity(0.4),
                  onTap: () => triggerOnTap(context),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      var inkWell = InkWell(
        onTap: () => triggerOnTap(context),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: const Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
          ),
        ),
      );
      if (edgeToEdgeImages) {
        return Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 8.0, left: 12.0, right: 12.0),
          child: inkWell,
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
          child: inkWell,
        );
      }
    }
  }

  void triggerOnTap(BuildContext context) async {
    // if (isUserLoggedIn && markPostReadOnMediaView) {
    //   // Mark post as read when on the feed page
    //   try {
    //     FeedBloc feedBloc = BlocProvider.of<FeedBloc>(context);
    //     feedBloc.add(FeedItemActionedEvent(postAction: PostAction.read, postId: postId, value: true));
    //   } catch (e) {}

    //   // Mark post as read when on the user page
    //   try {
    //     UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    //     userBloc.add(MarkUserPostAsReadEvent(postId: postId!, read: true));
    //   } catch (e) {}
    // }

    // if (originURL != null) {
    //   String? communityName = await getLemmyCommunity(originURL!);

    //   if (communityName != null) {
    //     try {
    //       await navigateToFeedPage(context, feedType: FeedType.community, communityName: communityName);
    //       return;
    //     } catch (e) {
    //       // Ignore exception, if it's not a valid community we'll perform the next fallback
    //     }
    //   }

    //   String? username = await getLemmyUser(originURL!);

    //   if (username != null) {
    //     try {
    //       await navigateToUserPage(context, username: username);
    //       return;
    //     } catch (e) {
    //       // Ignore exception, if it's not a valid user, we'll perform the next fallback
    //     }
    //   }

    //   if (context.mounted) {
    //     handleLink(context, url: originURL!);
    //   }
    // }
  }

  Widget linkInformation(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      excludeSemantics: true,
      child: Container(
        color: ElevationOverlay.applySurfaceTint(
          Theme.of(context).colorScheme.surface.withOpacity(0.8),
          Theme.of(context).colorScheme.surfaceTint,
          10,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.link,
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            if (viewMode != ViewMode.compact)
              Expanded(
                child: Text(
                  originURL!,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
