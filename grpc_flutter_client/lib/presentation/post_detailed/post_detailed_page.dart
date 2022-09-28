import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc_flutter_client/presentation/widgets/text_button.dart';
import 'package:intl/intl.dart';
import 'package:grpc_flutter_client/presentation/post_detailed/post_detailed_controller.dart';

class PostDetailedPage extends GetView<PostDetailedController> {
  final _textController = TextEditingController();

  PostDetailedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _authorSection(),
            _postSection(),
            _sectionDivider(),
            _commentCreatingSection(context),
            _sectionDivider(),
            Expanded(
              child: _commentListSection(),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: controller.goHome,
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        if (controller.isPostAuthor)
          IconButton(
            onPressed: controller.deletePost,
            icon: const Icon(Icons.delete),
          ),
      ],
    );
  }

  Widget _authorSection() {
    return Row(
      children: [
        const Text(
          'Author: ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
        Text(
          controller.isPostAuthor ? 'You' : controller.currentPost.authorName,
          style: const TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }

  Widget _postSection() {
    return Text(
      controller.currentPost.text,
      style: const TextStyle(fontSize: 15, color: Colors.black87),
    );
  }

  Widget _commentCreatingSection(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofocus: false,
          decoration: const InputDecoration(
            labelText: 'Write comment',
            border: OutlineInputBorder(),
          ),
          onChanged: controller.setButtonActive,
          minLines: 1,
          maxLines: 5,
          controller: _textController,
          textAlign: TextAlign.start,
        ),
        Obx(
          () => GrpcTextButton(
            isButtonActive: controller.isButtonActive.value,
            onClick: () {
              controller.addComment(_textController.value.text);
              FocusScope.of(context).unfocus();
              _textController.clear();
              controller.setButtonActive('');
            },
            buttonText: 'Add comment',
            textSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _commentListSection() {
    return Obx(
      () => ListView.separated(
        shrinkWrap: true,
        itemCount: controller.comments.length,
        padding: const EdgeInsets.all(10),
        separatorBuilder: (context, index) => const Divider(thickness: 2),
        itemBuilder: (context, index) {
          final comment = controller.comments[index];
          return ListTile(
            title: Text(comment.text),
            subtitle: Text(
              'On ${DateFormat('yyyy-MM-dd – HH:mm').format(comment.date)}\n'
              'from ${comment.authorName}',
            ),
            trailing: controller.isCommentAuthor(comment.userId)
                ? IconButton(
                    onPressed: () => controller.deleteComment(comment.id),
                    icon: const Icon(Icons.delete_outline),
                  )
                : null,
          );
        },
      ),
    );
  }

  Widget _sectionDivider([thickness = 1.0]) {
    return Divider(
      thickness: thickness,
      color: Colors.grey.shade700,
    );
  }
}
