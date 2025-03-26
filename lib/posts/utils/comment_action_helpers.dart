import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:uniun/common/widgets/multi_picker_item.dart';
import 'package:uniun/common/widgets/picker_item.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uniun/posts/bloc/post_bloc.dart';
import 'package:uniun/posts/utils/report_comment_dialog.dart';
import 'package:uniun/utils/global_context.dart';


enum CommentCardAction {
  save,
  copyText,
  shareLink,
  delete,
  upvote,
  downvote,
  reply,
  edit,
  report,
  visitProfile,
  blockUser,
  visitInstance,
  blockInstance,
}

class ExtendedCommentCardActions {
  const ExtendedCommentCardActions({
    required this.commentCardAction,
    required this.icon,
    required this.label,
    this.color,
    this.getForegroundColor,
    this.getOverrideIcon,
    this.shouldShow,
    this.shouldEnable,
  });

  final CommentCardAction commentCardAction;
  final IconData icon;
  final String label;
  final Color? color;
  final Color? Function(CommentEntity commentEntity)? getForegroundColor;
  final IconData? Function(CommentEntity commentEntity)? getOverrideIcon;
  final bool Function(BuildContext context, CommentEntity commentEntity)? shouldShow;
  final bool Function(bool isUserLoggedIn)? shouldEnable;
}

final List<ExtendedCommentCardActions> commentCardDefaultActionItems = [
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.visitProfile,
    icon: Icons.person_search_rounded,
    label: AppLocalizations.of(GlobalContext.context)!.visitUserProfile,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.blockUser,
    icon: Icons.block,
    label: AppLocalizations.of(GlobalContext.context)!.blockUser,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.visitInstance,
    icon: Icons.language,
    label: AppLocalizations.of(GlobalContext.context)!.visitInstance,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.blockInstance,
    icon: Icons.block_rounded,
    label: AppLocalizations.of(GlobalContext.context)!.blockInstance,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.copyText,
    icon: Icons.copy_rounded,
    label: AppLocalizations.of(GlobalContext.context)!.copyText,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.report,
    icon: Icons.report_outlined,
    label: AppLocalizations.of(GlobalContext.context)!.reportComment,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
];

final List<ExtendedCommentCardActions> commentCardDefaultMultiActionItems = [
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.upvote,
    label: AppLocalizations.of(GlobalContext.context)!.upvote,
    icon: Icons.arrow_upward_rounded,
    color: Colors.orange,
    getForegroundColor: (commentEntity) => null, //commentEntity.myVote == 1 ? Colors.orange : null,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.downvote,
    label: AppLocalizations.of(GlobalContext.context)!.downvote,
    icon: Icons.arrow_downward_rounded,
    color: Colors.blue,
    getForegroundColor: (commentEntity) => null, // commentEntity.myVote == -1 ? Colors.blue : null,
    shouldShow: (context, commentEntity) => true, // context.read<UserBloc>().state.downvotesEnabled,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.save,
    label: AppLocalizations.of(GlobalContext.context)!.save,
    icon: Icons.star_border_rounded,
    color: Colors.purple,
    getForegroundColor: (commentEntity) => null, // commentEntity.saved ? Colors.purple : null,
    getOverrideIcon: (commentEntity) => null, //commentEntity.saved ? Icons.star_rounded : null,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.reply,
    label: AppLocalizations.of(GlobalContext.context)!.reply(0),
    icon: Icons.reply_rounded,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.edit,
    label: AppLocalizations.of(GlobalContext.context)!.edit,
    icon: Icons.edit,
    shouldShow: (context, commentEntity) => false, //commentEntity.creator.id == context.read<AuthBloc>().state.account?.userId,
    shouldEnable: (isUserLoggedIn) => isUserLoggedIn,
  ),
  ExtendedCommentCardActions(
    commentCardAction: CommentCardAction.shareLink,
    icon: Icons.share_rounded,
    label: AppLocalizations.of(GlobalContext.context)!.shareLink,
  ),
];

void showCommentActionBottomModalSheet(
    BuildContext context, CommentEntity commentEntity, Function onSaveAction, Function onDeleteAction, Function onVoteAction, Function onReplyEditAction, Function onReportAction) {
  final theme = Theme.of(context);
  final bool isUserLoggedIn = context.read<UserBloc>().state.isLoggedIn;
  List<ExtendedCommentCardActions> commentCardActionItems = _updateDefaultCommentActionItems(context, commentEntity);

  // if (commentCardActionItems.any((c) => c.commentCardAction == CommentCardAction.blockInstance) && !LemmyClient.instance.supportsFeature(LemmyFeature.blockInstance)) {
  //   commentCardActionItems.removeWhere((c) => c.commentCardAction == CommentCardAction.blockInstance);
  // }

  showModalBottomSheet<void>(
    showDragHandle: true,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext bottomSheetContext) {
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 26.0, right: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.actions,
                  style: theme.textTheme.titleLarge!.copyWith(),
                ),
              ),
            ),
            MultiPickerItem(
              pickerItems: [
                ...commentCardDefaultMultiActionItems.where((a) => a.shouldShow?.call(context, commentEntity) ?? true).map(
                  (a) {
                    return PickerItemData(
                      label: a.label,
                      icon: a.getOverrideIcon?.call(commentEntity) ?? a.icon,
                      backgroundColor: a.color,
                      foregroundColor: a.getForegroundColor?.call(commentEntity),
                      onSelected: (a.shouldEnable?.call(isUserLoggedIn) ?? true)
                          ? () => onSelected(
                                context,
                                a.commentCardAction,
                                commentEntity,
                                onSaveAction,
                                onDeleteAction,
                                onVoteAction,
                                onReplyEditAction,
                                onReportAction,
                              )
                          : null,
                    );
                  },
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: commentCardActionItems.length,
              itemBuilder: (BuildContext itemBuilderContext, int index) {
                return PickerItem(
                  label: commentCardActionItems[index].label,
                  icon: commentCardActionItems[index].icon,
                  onSelected: (commentCardActionItems[index].shouldEnable?.call(isUserLoggedIn) ?? true)
                      ? () => onSelected(
                            context,
                            commentCardActionItems[index].commentCardAction,
                            commentEntity,
                            onSaveAction,
                            onDeleteAction,
                            onVoteAction,
                            onReplyEditAction,
                            onReportAction,
                          )
                      : null,
                );
              },
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      );
    },
  );
}

void onSelected(
  BuildContext context,
  CommentCardAction commentCardAction,
  CommentEntity commentEntity,
  Function onSaveAction,
  Function onDeleteAction,
  Function onUpvoteAction,
  Function onReplyEditAction,
  Function onReportAction,
) async {
//   Navigator.of(context).pop();

//   switch (commentCardAction) {
//     case CommentCardAction.save:
//       onSaveAction(commentEntity.id, !(commentEntity.saved));
//       break;
//     case CommentCardAction.copyText:
//       Clipboard.setData(ClipboardData(text: commentEntity.comment.content)).then((_) {
//         showSnackbar(context, AppLocalizations.of(context)!.copiedToClipboard);
//       });
//       break;
//     case CommentCardAction.shareLink:
//       Share.share(commentEntity.comment.apId);
//       break;
//     case CommentCardAction.delete:
//       onDeleteAction(commentEntity.comment.id, !(commentEntity.comment.deleted));
//     case CommentCardAction.upvote:
//       onUpvoteAction(commentEntity.comment.id, commentEntity.myVote == 1 ? 0 : 1);
//       break;
//     case CommentCardAction.downvote:
//       onUpvoteAction(commentEntity.comment.id, commentEntity.myVote == -1 ? 0 : -1);
//       break;
//     case CommentCardAction.reply:
//       onReplyEditAction(commentEntity, false);
//       break;
//     case CommentCardAction.edit:
//       onReplyEditAction(commentEntity, true);
//       break;
//     case CommentCardAction.report:
//       onReportAction(commentEntity.comment.id);
//       break;
//     case CommentCardAction.visitProfile:
//       navigateToUserPage(context, userId: commentEntity.creator.id);
//       break;
//     case CommentCardAction.blockUser:
//       context.read<UserBloc>().add(BlockUserEvent(personId: commentEntity.creator.id, blocked: true));
//       break;
//     case CommentCardAction.visitInstance:
//       navigateToInstancePage(context, instanceHost: fetchInstanceNameFromUrl(commentEntity.creator.actorId)!, instanceId: commentEntity.community.instanceId);
//       break;
//     case CommentCardAction.blockInstance:
//       context.read<InstanceBloc>().add(InstanceActionEvent(
//             instanceAction: InstanceAction.block,
//             instanceId: commentEntity.creator.instanceId,
//             domain: fetchInstanceNameFromUrl(commentEntity.creator.actorId),
//             value: true,
//           ));
//       break;
//   }
// }
}

List<ExtendedCommentCardActions> _updateDefaultCommentActionItems(BuildContext context, CommentEntity commentEntity) {
  final bool isOwnComment = false; //commentEntity.creator.id == context.read<AuthBloc>().state.account?.userId;
  bool isDeleted = false; //commentEntity.comment.deleted;
  List<ExtendedCommentCardActions> updatedList = [...commentCardDefaultActionItems];

  if (isOwnComment) {
    updatedList.add(ExtendedCommentCardActions(
      commentCardAction: CommentCardAction.delete,
      icon: isDeleted ? Icons.restore_from_trash_rounded : Icons.delete_rounded,
      label: isDeleted ? AppLocalizations.of(GlobalContext.context)!.restore : AppLocalizations.of(GlobalContext.context)!.delete,
    ));
  }
  return updatedList;
}

void showReportCommentActionBottomSheet(
  BuildContext context, {
  required int commentId,
}) {
  showModalBottomSheet(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (_) => BlocProvider.value(
      value: context.read<PostBloc>(),
      child: ReportCommentDialog(
        commentId: commentId,
      ),
    ),
  );
}
