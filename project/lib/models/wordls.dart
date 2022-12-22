import 'package:project/models/sentence.dart';

class Word {
  int id;
  String word;
  String meaning;
  String sentences;

  Word({
    required this.id,
    required this.word,
    required this.meaning,
    required this.sentences,
  });

  factory Word.fromJson(Map<String, dynamic> json) {
    var list = json['sentences'] as List;

    List<Sentence> sentences = list.map((i) => Sentence.fromJson(i)).toList();
    return Word(
        id: json['id'],
        word: json['word'],
        meaning: json['meaning'],
        sentences: json['sentences']);
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["word"] = word;
    map["meaning"] = meaning;
    map["sentences"] = sentences;

    return map;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "word": word,
        "meaning": meaning,
        "sentences": sentences,
      };
}
