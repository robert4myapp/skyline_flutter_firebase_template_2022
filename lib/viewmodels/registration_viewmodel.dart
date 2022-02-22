import 'package:skyline_template_app/viewmodels/base_viewmodel.dart';
import 'package:skyline_template_app/locator.dart';
import 'package:skyline_template_app/core/services/navigation_service.dart';
import 'package:skyline_template_app/core/utilities/route_names.dart';
import 'package:skyline_template_app/core/enums/view_state.dart';

class RegistrationViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String _email;
  String get email => _email;
  String _password;
  String get password => _password;

  Future init() async {
    print("Registration ViewModel init()");
    setState(ViewState.Busy);
    try {
   print('try registration statement');
    } catch (e) {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);

  }


  void setEmailAddress(String inputString) {
    _email = inputString;
  }

  void setPassword(String inputString) {
    _password = inputString;
  }

  void routeToTeacherView() {
    _navigationService.navigateTo(TeacherViewRoute);
  }

  void routeToHomeView() {
    _navigationService.navigateTo(HomeViewRoute);
  }

  RegistrationViewModel() {
    setState(ViewState.Busy);
    try {
      print("RegistrationViewModel Constructor Called()");
    } catch (e) {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
