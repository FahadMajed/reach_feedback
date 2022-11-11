import 'package:reach_feedback/reach_feedback.dart';
import 'package:reach_core/core/core.dart';

abstract class BaseFeedbackRepository {
  Future<void> addFeedback(Feedback feedback);
}

class FeedbackRepository implements BaseFeedbackRepository {
  final FirebaseFirestore _database;
  late CollectionReference _feedbackCollection;

  FeedbackRepository(this._database) {
    _feedbackCollection = _database.collection("feedback");
  }

  @override
  Future<void> addFeedback(Feedback feedback) =>
      _feedbackCollection.add(feedback.toMap());
}
