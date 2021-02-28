import 'package:perseverance/domain/repository/Repository.dart';
import 'package:perseverance/view/Navigator.dart';
import 'package:perseverance/view/viewmodel/RootViewModel.dart';

class SplashViewModel extends RootViewModel {
  SplashViewModel(Repository repository, Navigator navigator) : super(repository, navigator);

  @override
  initialize() {
    _checkAuth();
  }

  void _checkAuth() async {
    await Future.delayed(Duration(milliseconds: 500));
    showProgress();
  }
}
