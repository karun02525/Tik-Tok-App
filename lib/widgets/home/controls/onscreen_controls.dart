import 'package:flutter/material.dart';
import 'package:tik_tok_app/animations/spinner_animation.dart';
import 'package:tik_tok_app/resources/assets.dart';
import 'package:tik_tok_app/widgets/home/audio_spinner_icon.dart';
import 'package:tik_tok_app/widgets/home/controls/video_control_action.dart';
import 'package:tik_tok_app/widgets/home/video_metadata/user_profile.dart';
import 'package:tik_tok_app/widgets/home/video_metadata/video_desc.dart';

Widget onScreenControls() {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(flex: 5, child: videoDesc()),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(bottom: 60, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                userProfile(),
                videoControlAction(icon: AppIcons.heart, label: "17.8k"),
                videoControlAction(icon: AppIcons.chat_bubble, label: "130"),
                videoControlAction(
                    icon: AppIcons.reply, label: "Share", size: 27),
                SpinnerAnimation(body: audioSpinner())
              ],
            ),
          ),
        )
      ],
    ),
  );
}
