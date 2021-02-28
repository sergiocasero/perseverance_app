
import 'package:perseverance/data/datasource/local/Local.dart';
import 'package:perseverance/data/datasource/remote/Remote.dart';
import 'package:perseverance/domain/repository/Repository.dart';

class CommonRepository extends Repository {
  final Local _local;
  final Remote _remote;

  CommonRepository(this._local, this._remote);
}
