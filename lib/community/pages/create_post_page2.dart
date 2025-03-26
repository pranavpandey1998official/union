
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_buttons.dart';
import 'package:markdown_editable_textinput/markdown_text_input_field.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/common/widgets/community_icon.dart';
import 'package:uniun/common/widgets/image_preview.dart';
import 'package:uniun/community/cubit/create_post_cubit.dart';
import 'package:uniun/core/widgets/common_markdown_body.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uniun/utils/image.dart';

class CreatePostPage extends StatefulWidget {
  final int communityID;
  const CreatePostPage({super.key, required this.communityID});
  
  @override
  State<StatefulWidget> createState () => _CreatePostPageState();


}

const List<Widget> fruits = <Widget>[
  Text('TEXT'),
  Text('LINK'),
  Text('IMAGE')
];

class _CreatePostPageState extends State<CreatePostPage> {

  final TextEditingController _bodyTextController = TextEditingController();
  final TextEditingController _titleTextController = TextEditingController();
  final TextEditingController _urlTextController = TextEditingController();

  final FocusNode _bodyFocusNode = FocusNode();
  final List<bool> _selectedFruits = <bool>[true, false, false];
  bool isNSFW = false;
  bool showPreview = false;

  bool wasKeyboardVisible = false;

  String mediaURL = '';

  final keyboardVisibilityController = KeyboardVisibilityController();

  @override
  void dispose() {
    _bodyTextController.dispose();
    _titleTextController.dispose();
    _urlTextController.dispose();
    _bodyFocusNode.dispose();

    FocusManager.instance.primaryFocus?.unfocus();

    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt<CreatePostCubit>()..initial(widget.communityID),
      child: BlocConsumer<CreatePostCubit, CreatePostState>(
        listener: (context, state) {},
        builder: (context, state) {
          return KeyboardDismissOnTap(
            child: Scaffold(
              appBar: AppBar(
                title: Text(l10n.createPost),
                toolbarHeight: 70.0,
                centerTitle: false,
                actions: [
                  state.status == CreatePostStatus.submitting
                      ? const Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator()),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            onPressed: () {
                              context.read<CreatePostCubit>().createPost(
                                communityId: widget.communityID,
                                title: _titleTextController.text,
                                body: _bodyTextController.text,
                                type: _selectedFruits.indexWhere((element) => element),
                                isNSFW: isNSFW,
                              );

                            },
                            icon: Icon(
                              Icons.send_rounded,
                              semanticLabel: l10n.createPost,
                            ),
                          ),
                        ),
                ],
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: 
                        state.status == CreatePostStatus.uninitialized ? const Center(child: Text('yes') /*CircularProgressIndicator()*/) :
                        SingleChildScrollView(
                          child:  Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                            CommunityDes(communityEntity: state.community!),
                            const SizedBox(height: 4.0),
                            TextFormField(
                              controller: _titleTextController,
                              decoration: InputDecoration(
                                hintText: l10n.postTitle,
                              ),
                            ),
                            Row(
                              children: [
                              Text(
                                style: theme.textTheme.bodyLarge,
                                'Type'),
                              ToggleButtons(
                                direction: Axis.horizontal,
                                onPressed: (int index) {
                                  setState(() {
                                    // The button that is tapped is set to true, and the others to false.
                                    for (int i = 0; i < _selectedFruits.length; i++) {
                                      _selectedFruits[i] = i == index;
                                    }
                                  });
                                },
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                                constraints: const BoxConstraints(
                                  minHeight: 30.0,
                                  minWidth: 60.0,
                                ),
                                isSelected: _selectedFruits,
                                children: fruits,
                              ),
                              Text(l10n.postNSFW),
                              const SizedBox(width: 10),
                              Switch(
                                value: isNSFW,
                                onChanged: (bool value) => setState(() => isNSFW = value),
                              ),
                            ],),
                            if (_selectedFruits[0])showPreview
                                ? Container(
                                    constraints: const BoxConstraints(minWidth: double.infinity),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(12),
                                    child: SingleChildScrollView(
                                      child: CommonMarkdownBody(
                                        body: _bodyTextController.text,
                                        isComment: true,
                                      ),
                                    ),
                                  )
                                : MarkdownTextInputField(
                                    controller: _bodyTextController,
                                    focusNode: _bodyFocusNode,
                                    label: l10n.postBody,
                                    minLines: 8,
                                    maxLines: null,
                                    textStyle: theme.textTheme.bodyLarge,
                                  ),
                            if (_selectedFruits[1]) TextFormField(
                              controller: _urlTextController,
                              decoration: InputDecoration(
                                hintText: l10n.postURL,
                              ),
                            ),
                            if (_selectedFruits[2]) Row(children: [
                              mediaURL.isNotEmpty?  Text( mediaURL) : TextButton(
                                onPressed: () async {
                                  if (state.status == CreatePostStatus.imageUploadInProgress) return;

                                  String imagePath = await selectImageToUpload();
                                  setState(() {
                                    mediaURL = imagePath;
                                  });
                                  },
                                child: Text('Select Image'),
                              ),
                            ],),
                            ]
                          )
                        ),
                      ),
                      if(_selectedFruits[0]) Row(
                        children: [
                          Expanded(
                            child: MarkdownButtons(
                              controller: _bodyTextController,
                              focusNode: _bodyFocusNode,
                              actions: const [
                                MarkdownType.link,
                                MarkdownType.bold,
                                MarkdownType.italic,
                                MarkdownType.blockquote,
                                MarkdownType.strikethrough,
                                MarkdownType.title,
                                MarkdownType.list,
                                MarkdownType.separator,
                                MarkdownType.code,
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                            child: IconButton(
                              onPressed: () {
                                if (!showPreview) {
                                  setState(() => wasKeyboardVisible = keyboardVisibilityController.isVisible);
                                  FocusManager.instance.primaryFocus?.unfocus();
                                }

                                setState(() => showPreview = !showPreview);
                                if (!showPreview && wasKeyboardVisible) _bodyFocusNode.requestFocus();
                              },
                              icon: Icon(
                                showPreview ? Icons.visibility_outlined : Icons.visibility,
                                color: theme.colorScheme.onSecondary,
                                semanticLabel: l10n.postTogglePreview,
                              ),
                              visualDensity: const VisualDensity(horizontal: 1.0, vertical: 1.0),
                              style: ElevatedButton.styleFrom(backgroundColor: theme.colorScheme.secondary),
                            ),
                          ),
                        ],
                      )
                    ]
                  )
                )
              ),
            ),
          );

        },
      ),
    );
  }

}


class CommunityDes extends StatelessWidget {
  final CommunityEntity communityEntity;
  const CommunityDes({super.key, required this.communityEntity});
  
  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              CommunityIcon(community: communityEntity, radius: 16),
              const SizedBox(width: 12),
              Text('${communityEntity?.name} '),
            ],
          );
  }
}