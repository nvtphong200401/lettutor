import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/infrastructure/schedule/params/get_list_schedule.dart';
import 'package:lettutor/service/http_service.dart';

import 'params/get_list_history.dart';

class ScheduleRepository {
  final HttpService _httpService;
  ScheduleRepository(this._httpService);

  Future<Either<Failure, Data>> getScheduleList(int perPage, int page) async {
    final result = await _httpService
        .getData<ScheduleListModel>(GetListScheduleParam(page: page, perPage: perPage));
    return result.fold((l) => left(l), (r) {
      return right(r.data ?? const Data(count: 0, rows: []));
    });
  }

  Future<Either<Failure, Data>> getHistoryList(int perPage, int page) async {
    final result = await _httpService
        .getData<ScheduleListModel>(GetListHistoryParam(page: page, perPage: perPage));
    return result.fold((l) => left(l), (r) {
      return right(r.data ?? const Data(count: 0, rows: []));
    });
  }
}
