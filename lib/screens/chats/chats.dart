import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

import '../../constants/theme.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primary1,
        centerTitle: false,
        title: Text("Chats",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mode_edit_outline_outlined),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ChatItem(index: index);
        },
        separatorBuilder: (_, __) {
          return const SizedBox(height: 0);
        },
        itemCount: 20,
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final int index;

  const ChatItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: AppTheme.neutral5, width: 0.1),
      ),
      leading: RandomAvatar(
        DateTime.now().toIso8601String(),
        height: 50,
        width: 50,
      ),
      title: Text(
        'indexing: $index',
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lorem Ipsum',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppTheme.neutral4),
          )
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "20/05",
            style: TextStyle(
              color: AppTheme.neutral4,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0,
              vertical: 2.0,
            ),
            decoration: BoxDecoration(
              color: AppTheme.semantic2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "12",
              style: Theme.of(context).textTheme.caption?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.1,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
