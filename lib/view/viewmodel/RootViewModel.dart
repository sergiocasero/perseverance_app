import 'package:perseverance/domain/repository/Repository.dart';
import 'package:perseverance/view/Navigator.dart';
import 'package:stacked/stacked.dart';

abstract class RootViewModel extends BaseViewModel {
  bool _loading = false;

  final Repository _repository;
  final Navigator _navigator;

  RootViewModel(this._repository, this._navigator);

  Repository get repository => _repository;

  Navigator get navigator => _navigator;

  bool get loading => _loading;

  initialize();

  void showProgress() {
    _loading = true;
    notify();
  }

  void hideProgress() {
    _loading = false;
    notify();
  }

  void notify() {
    notifyListeners();
  }
}
