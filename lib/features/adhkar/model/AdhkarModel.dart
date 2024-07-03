class AdhkarModel {
  AdhkarModel({
      this.order, 
      this.content, 
      this.translation, 
      this.transliteration, 
      this.count, 
      this.countDescription, 
      this.fadl, 
      this.source, 
      this.type, 
      this.audio, 
      this.hadithText, 
      this.explanationOfHadithVocabulary,});

  AdhkarModel.fromJson(dynamic json) {
    order = json['order'];
    content = json['content'];
    translation = json['translation'];
    transliteration = json['transliteration'];
    count = json['count'];
    countDescription = json['count_description'];
    fadl = json['fadl'];
    source = json['source'];
    type = json['type'];
    audio = json['audio'];
    hadithText = json['hadith_text'];
    explanationOfHadithVocabulary = json['explanation_of_hadith_vocabulary'];
  }
  int? order;
  String? content;
  String? translation;
  String? transliteration;
  int? count;
  String? countDescription;
  String? fadl;
  String? source;
  int? type;
  String? audio;
  String? hadithText;
  String? explanationOfHadithVocabulary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['order'] = order;
    map['content'] = content;
    map['translation'] = translation;
    map['transliteration'] = transliteration;
    map['count'] = count;
    map['count_description'] = countDescription;
    map['fadl'] = fadl;
    map['source'] = source;
    map['type'] = type;
    map['audio'] = audio;
    map['hadith_text'] = hadithText;
    map['explanation_of_hadith_vocabulary'] = explanationOfHadithVocabulary;
    return map;
  }

}