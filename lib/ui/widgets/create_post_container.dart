import 'package:feedbook/ui/app_snackbar.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kIsWeb
          ? const EdgeInsets.symmetric(horizontal: 20.0)
          : const EdgeInsets.only(top: 1.0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),
            const Divider(height: 10.0, thickness: 0.5),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () => AppSnackBar.show(
                        context, kIsWeb ? 'Live Video' : 'Live'),
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text(kIsWeb ? 'Live Video' : 'Live'),
                  ),
                  TextButton.icon(
                    onPressed: () => AppSnackBar.show(
                        context, kIsWeb ? 'Photo/Video' : 'Photo'),
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text(kIsWeb ? 'Photo/Video' : 'Photo'),
                  ),
                  TextButton.icon(
                    onPressed: () => AppSnackBar.show(
                        context, kIsWeb ? 'Feeling/Activity' : 'Room'),
                    icon: const Icon(
                      kIsWeb ? Icons.emoji_emotions : Icons.video_call,
                      color: kIsWeb ? Colors.yellow : Colors.purpleAccent,
                    ),
                    label: Text(kIsWeb ? 'Feeling/Activity' : 'Room'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
