mvvm_example
An example of flutter mvvm implementation

Specs
Flutter 2.2.1 • channel stable •  
https://github.com/flutter/flutter.git  
Framework • revision 02c026b03c 2021-05-27  
Engine • revision 0fdb562ac8  
Tools • Dart 2.13.1  
Android Studio 4.1.1


Description
This example shows how to implement correctly the MVVM design pattern in an example project.  
The HomePage contains a widget that contains a textField to store an user input (e-mail) and a button to post it.  

Files  
MyHomePage.dart : Contains the main view, that contains the TextEditing controller that will be used to create the email box, and a method callback that will open a new page.  
SubscriptionViewModel.dart : It's the abstract class of the View Model, an interface to his methods (outputIsButtonEnabled and outputErrorText)  
SubscriptionViewModelImpl.dart : It's the implementation of the View Model, with a Sink connected to the inputMailText, and where the 2 methods are overriden creating a stream that receives information from the business logic described in the Email Validator (model).  
EmailValidator.dart : Contains all the business logic used to decide if an email is valid or not, with a specific error text for every different kind of error.  
EmailBox.dart : It's a widget containing the TextField and the button. When it is created (rendered), in its initState we add a listener to the textField controller. The UI for the component is described here. The ErrorText is built with a StreamBuilder connected to the ViewModel instance, and the SubmitButton is created with a StreamBuilder connected to the output of the viewModel (that is, in turn, connected to the Business Logic).  
MyTextField.dart : It's the Ui component containing the textField and the error message.  
SubmitButton.dart : It's the Ui component containing the ElevatedButton. It can be shown as disabled when we select a null function for its onPress activity. Otherwise, the activity that is fired is the NextStep function, that we provide when creating the EmailBox.  

Compatibility  
This projects compiles correctly to Android, iOs, macOs (BigSur), Windows10(build 1909) and Web (Chrome 89.0.4389.82 and Edge 89.0.774.50).  