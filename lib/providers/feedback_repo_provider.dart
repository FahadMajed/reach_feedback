import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reach_core/core/core.dart';
import 'package:reach_feedback/reach_feedback.dart';

final feedbackRepoPvdr =
    Provider((ref) => FeedbackRepository(ref.read(databaseProvider)));
