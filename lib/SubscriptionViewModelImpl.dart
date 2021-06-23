import 'dart:async';

import 'EmailValidator.dart';
import 'SubscriptionViewModel.dart';

class SubscriptionViewModelImpl implements SubscriptionViewModel {
  var _mailTextController = StreamController<String>.broadcast();

  @override
  Sink<String> get inputMailText => _mailTextController;

  @override
  Stream<bool> get outputIsButtonEnabled =>
      _mailTextController.stream.map((email) => EmailValidator.isEmailValid(email));

  @override
  Stream<String> get outputErrorText => _mailTextController.stream.map((email) => EmailValidator.emailError(email));

  @override
  void dispose() => _mailTextController.close();
}
