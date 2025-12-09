import 'package:prac11/domain/entities/support/faq_item_model.dart';
import 'package:prac11/domain/entities/support/feedback_message_model.dart';

abstract class SupportRepository {
  List<FaqItem> getFaqItems();
  List<FeedbackMessage> getFeedbackMessages();
  void sendFeedback({
    required String subject,
    required String message,
    String? contact,
  });
}

