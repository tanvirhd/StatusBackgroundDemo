class ModelCategory {
  String _id;
  String _picURL;


  ModelCategory( this._id, this._picURL);

  String get picURL => _picURL;

  set picURL(String value) {
    _picURL = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}