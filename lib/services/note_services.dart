import 'package:addictionsupportroom/model/note_model.dart';
import 'package:addictionsupportroom/util/constant/api_const.dart';
import 'package:dio/dio.dart';

class NoteServices {
  Future<List<Note>> fetchNotes() async {
    List<Note> result = [];
    var dio = Dio();
    try {
      final response = await dio.get('$baseUrl/api/home/notes');
      if (response.statusCode == 200) {
        for (var element in response.data) {
          result.add(
            Note.fromJson(element),
          );
        }

        return result;
      }
    } catch (error) {
      throw error.toString();
    }
    return result;
  }
}
