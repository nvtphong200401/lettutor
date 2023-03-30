import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/infrastructure/schedule/params/get_list_schedule.dart';
import 'package:lettutor/service/http_service.dart';

class ScheduleRepository {
  final HttpService _httpService;
  ScheduleRepository(this._httpService);

  Future<Either<Failure, List<ScheduleModel>>> getScheduleList() async {
    final result =
        await _httpService.getData<ScheduleListModel>(GetListScheduleParam(page: 1, perPage: 20));
    log('get done');
    return result.fold((l) => left(l), (r) {
      log('${r.data?.rows}');
      return right(r.data?.rows ?? []);
    });
  }
}
