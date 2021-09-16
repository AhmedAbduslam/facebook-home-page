import 'package:feedbook/app_snackbar.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/colors.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  final ScrollController scrollController;

  const Rooms({
    required this.onlineUsers,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          elevation: kIsWeb ? 1.0 : 0.0,
          shape: kIsWeb
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))
              : null,
          child: Container(
            height: 60.0,
            color: Colors.white,
            child: ListView.builder(
              controller: scrollController,
              physics: AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
              scrollDirection: Axis.horizontal,
              itemCount: 1 + onlineUsers.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0)
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: _CreateRoomButton(),
                  );

                final User user = onlineUsers[index - 1];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ProfileAvatar(
                    imageUrl: user.imageUrl,
                    isActive: true,
                  ),
                );
              },
            ),
          ),
        ),
        if (kIsWeb)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  if (scrollController.hasClients)
                    scrollController.animateTo(10,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                },
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
                        offset: Offset(0.0, 1.0), //(x,y)
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

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => AppSnackBar.show(context, 'create Room'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 2.0,
        color: (Colors.blue[50])!,
      ),
      textColor: AppColors.faceBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                AppColors.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4.0),
          Text(
            'Create Room',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
