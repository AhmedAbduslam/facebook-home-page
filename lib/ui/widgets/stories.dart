import 'package:cached_network_image/cached_network_image.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/app_colors.dart';
import 'package:feedbook/ui/app_snackbar.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({
    required this.currentUser,
    required this.stories,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          height: 220.0,
          color: kIsWeb ? Colors.transparent : Colors.white,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1 + stories.length,
            itemBuilder: (context, index) {
              if (index == 0)
                return _StoryCard(isAddStory: true, currentUser: currentUser);

              final Story story = stories[index - 1];
              return Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: _StoryCard(story: story),
              );
            },
          ),
        ),
        if (kIsWeb)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () => AppSnackBar.show(context, 'open Stories screen'),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User? currentUser;
  final Story? story;

  const _StoryCard({
    this.isAddStory = false,
    this.currentUser,
    this.story,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          AppSnackBar.show(context, isAddStory ? 'Create Story' : 'open story'),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              imageUrl: isAddStory ? currentUser!.imageUrl : story!.imageUrl,
              height: double.infinity,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: 110,
            decoration: BoxDecoration(
              gradient: AppColors.storyGradient,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          if (isAddStory)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ),
          if (isAddStory)
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey[200]!, width: 5),
                ),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: AppColors.faceBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          if (!isAddStory)
            Positioned(
              top: 8.0,
              left: 8.0,
              child: ProfileAvatar(
                imageUrl: story!.user.imageUrl,
                hasBorder: !story!.isViewed,
              ),
            ),
          Positioned(
            bottom: 8.0,
            left: 8.0,
            right: 8.0,
            child: Text(
              isAddStory
                  ? 'Create Story'
                  : '${story!.user.firstName} ${story!.user.lastName}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isAddStory ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
