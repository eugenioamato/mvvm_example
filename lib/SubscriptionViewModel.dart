abstract class SubscriptionViewModel {
  Sink<String> get inputMailText;
  Stream<bool> get outputIsButtonEnabled;
  Stream<String> get outputErrorText;

  void dispose();
}
