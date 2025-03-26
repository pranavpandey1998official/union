import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';

import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/posts/utils/comment_action_helpers.dart';

class CommentCardActions extends StatelessWidget {
  final CommentEntity commentEntity;
  final bool isEdit;
  final double iconSize = 22;

  final Function(int, int) onVoteAction;
  final Function(int, bool) onSaveAction;
  final Function(int, bool) onDeleteAction;
  final Function(CommentEntity, bool) onReplyEditAction;
  final Function(int) onReportAction;

  const CommentCardActions({
    super.key,
    required this.commentEntity,
    this.isEdit = false,
    required this.onVoteAction,
    required this.onSaveAction,
    required this.onDeleteAction,
    required this.onReplyEditAction,
    required this.onReportAction,
  });

  final MaterialColor upVoteColor = Colors.orange;
  final MaterialColor downVoteColor = Colors.blue;

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<ThunderBloc, ThunderState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 28,
              width: 44,
              child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz_rounded,
                    semanticLabel: 'Actions',
                    size: 20,
                  ),
                  visualDensity: VisualDensity.compact,
                  onPressed: () {
                    showCommentActionBottomModalSheet(
                      context,
                      commentEntity,
                      onSaveAction,
                      onDeleteAction,
                      onVoteAction,
                      onReplyEditAction,
                      onReportAction,
                    );
                    HapticFeedback.mediumImpact();
                  }),
            ),
            SizedBox(
              height: 28,
              width: 44,
              child: IconButton(
                icon: Icon(isEdit ? Icons.edit_rounded : Icons.reply_rounded, semanticLabel: isEdit ? 'Edit' : 'Reply', size: iconSize),
                visualDensity: VisualDensity.compact,
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  onReplyEditAction(commentEntity, isEdit);
                },
              ),
            ),
            SizedBox(
              height: 28,
              width: 44,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_upward,
                    size: iconSize,
                  ),
                  color: null, //voteType == 1 ? upVoteColor : null,
                  visualDensity: VisualDensity.compact,
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    onVoteAction(commentEntity.commentID, 1);
                  }),
            ),
              SizedBox(
                height: 28,
                width: 44,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_downward,
                    size: iconSize,
                  ),
                  color: null, // voteType == -1 ? downVoteColor : null,
                  visualDensity: VisualDensity.compact,
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    onVoteAction(commentEntity.commentID, -1);
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}
