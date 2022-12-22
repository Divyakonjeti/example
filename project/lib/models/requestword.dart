class RequestWord {
  int id;
  String word;
  String meaning;
  String sentence;

  RequestWord({
    required this.id,
    required this.word,
    required this.meaning,
    required this.sentence,
  });

  factory RequestWord.fromJson(Map<String, dynamic> json) {
    return RequestWord(
      id: json['id'],
      word: json['word'],
      meaning: json['meaning'],
      sentence: json['sentence'],
    );
  }

  Map toMap() {
    //var map = new Map<String, dynamic>();
    var map = <String, dynamic>{};
    map["id"] = id;
    map["word"] = word;
    map["meaning"] = meaning;
    map["requestedBy"] = sentence;
    return map;
  }

  Map<String, dynamic> toJson() =>
      {"id": id, "word": word, "meaning": meaning, "sentence": sentence};
}
