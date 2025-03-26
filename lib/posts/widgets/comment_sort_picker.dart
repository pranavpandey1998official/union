import 'package:flutter/material.dart';
import 'package:uniun/common/widgets/picker_item.dart';
import 'package:uniun/core/enum/comment_sort_type.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uniun/posts/widgets/bottom_sheet_list_picker.dart';
import 'package:uniun/utils/global_context.dart';

class CommentSortPicker extends BottomSheetListPicker<CommentSortType> {

  static List<ListPickerItem<CommentSortType>> getCommentSortTypeItems() => [
        ListPickerItem(
          payload: CommentSortType.hot,
          icon: Icons.local_fire_department,
          label: AppLocalizations.of(GlobalContext.context)!.hot,
        ),
        ListPickerItem(
          payload: CommentSortType.top,
          icon: Icons.military_tech,
          label: AppLocalizations.of(GlobalContext.context)!.top,
        ),
          ListPickerItem(
            payload: CommentSortType.controversial,
            icon: Icons.warning_rounded,
            label: AppLocalizations.of(GlobalContext.context)!.controversial,
          ),
        ListPickerItem(
          payload: CommentSortType.new_,
          icon: Icons.auto_awesome_rounded,
          label: AppLocalizations.of(GlobalContext.context)!.new_,
        ),
        ListPickerItem(
          payload: CommentSortType.old,
          icon: Icons.access_time_outlined,
          label: AppLocalizations.of(GlobalContext.context)!.old,
        ),
        //
        // ListPickerItem(
        //   payload: CommentSortType.chat,
        //   icon: Icons.chat,
        //   label: 'Chat',
        // ),
      ];

  CommentSortPicker(
      {super.key,
      required super.onSelect,
      required super.title,
      List<ListPickerItem<CommentSortType>>? items,
      super.previouslySelected})
      : super(items: items ?? CommentSortPicker.getCommentSortTypeItems());

  @override
  State<StatefulWidget> createState() => _SortPickerState();
}

class _SortPickerState extends State<CommentSortPicker> {
  bool topSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 100),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: defaultSortPicker(),
      ),
    );
  }

  Widget defaultSortPicker() {
    final theme = Theme.of(context);

    return Column(
      key: ValueKey<bool>(topSelected),
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, left: 26.0, right: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.title,
              style: theme.textTheme.titleLarge!.copyWith(),
            ),
          ),
        ),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ..._generateList(CommentSortPicker.getCommentSortTypeItems(), theme),
          ],
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  List<Widget> _generateList(List<ListPickerItem<CommentSortType>> items, ThemeData theme) {
    return items
        .map(
          (item) => PickerItem(
            label: item.label,
            icon: item.icon,
            onSelected: () {
              Navigator.of(context).pop();
              widget.onSelect(item);
            },
            isSelected: widget.previouslySelected == item.payload,
          ),
        )
        .toList();
  }
}
