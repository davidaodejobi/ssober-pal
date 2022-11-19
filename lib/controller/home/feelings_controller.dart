import 'package:addictionsupportroom/model/feelings.dart';
import 'package:flutter/cupertino.dart';

class FeelingsController extends ChangeNotifier {
  Feelings? _selectedFeeling;

  Feelings? get selectedFeeling => _selectedFeeling;

  select(Feelings feeling) {
    _selectedFeeling = feeling;
    notifyListeners();
  }

  clear() {
    _selectedFeeling = null;
    notifyListeners();
  }
}
