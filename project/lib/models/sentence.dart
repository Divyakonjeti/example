class Sentence {
  String sentence;

  Sentence({
    required this.sentence,
  });

  factory Sentence.fromJson(Map<String, dynamic> json) {
    return Sentence(
      sentence: json['sentence'],
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();

    map["sentence"] = sentence;
    return map;
  }

  Map<String, dynamic> toJson() => {
        "sentence": sentence,
      };
}
