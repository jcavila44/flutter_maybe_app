import 'package:dio/dio.dart';
import 'package:flutter_maybe_app/domain/entities/message.dart';
import 'package:flutter_maybe_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final YesNoModel yesNoModel = YesNoModel.fromJsonMAp(response.data);

    return Message(
      text: yesNoModel.answer,
      fromWho: FromWho.hers,
      imageUrl: yesNoModel.image,
    );
  }
}
