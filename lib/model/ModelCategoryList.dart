import 'package:StatusBackgroundDemo/model/ModelCategory.dart';

class ModelCategoryList{
  List<ModelCategory> _itemList;
  String _title;
  String  _id;

  ModelCategoryList(this._itemList, this._title,this._id);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  List<ModelCategory> get itemList => _itemList;

  set itemList(List<ModelCategory> value) {
    _itemList = value;
  }
}