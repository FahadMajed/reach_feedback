import 'dart:io';

import 'package:flutter/material.dart';

import 'package:reach_core/core/core.dart';

import 'package:reach_feedback/reach_feedback.dart' as fb;

class FeedbackScreen extends ConsumerWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    //TODO add controllers then assign thier values to feedback when button is pressed
    fb.Feedback feedback = fb.Feedback(
        title: "",
        body: "",
        version: "0.0",
        isIOS: Platform.isIOS,
        isAndriod: Platform.isAndroid,
        dateTime: DateTime.now(),
        isResearchersApp: true);
    return ReachScaffold(
      title: "feedback",
      h5: "feedback",
      h6: "feedback_desc",
      formKey: _formKey,
      body: [
        ReachTextField(
          labelText: 'title'.tr,
          onChanged: (title) => feedback = feedback.copyWith(title: title),
          validator: (String? title) =>
              Validator.isNotEmpty(title ?? "", "Title"),
        ),
        sizedHeight8,
        ReachTextField(
          inputType: TextInputType.multiline,
          maxLength: 500,
          maxLines: 5,
          labelText: 'body'.tr,
          onChanged: (body) => feedback = feedback.copyWith(body: body),
          validator: (String? body) => Validator.isNotEmpty(body ?? "", "Body"),
        ),
      ],
      button: BottomButton(
        title: 'send'.tr,
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            String version = "";
            // await PackageInfo.fromPlatform().then(
            //   (PackageInfo packageInfo) {
            //     version = packageInfo.version;

            //     ref.read(fb.feedbackRepoPvdr).addFeedback(
            //           feedback.copyWith(
            //               version: version,
            //               isIOS: Platform.isIOS,
            //               isAndriod: Platform.isAndroid,
            //               dateTime: DateTime.now(),
            //               isResearchersApp: true),
            //         );

            //     Toast.success(
            //       'feedback_toast'.tr,
            //       pop: true,
            //       times: 2,
            //     );
            //   },
            // );
          }
        },
      ),
    );
  }
}
