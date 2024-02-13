import 'dart:convert';
import 'package:flutter/cupertino.dart';

class EngBibleHelper {
  late Map bibleData;

  Future<void> readengBible(BuildContext context) async {
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/bibleE.json");
    bibleData = jsonDecode(data);

    debugPrint('Got Bible Data...');
    // print(jsonResult['Book'].length);
    // print(bibleData['Book'][0]['Chapter'][0]['Verse'].length);
  }

  // int getChapterLen(Map data){
  //  return bibleData['Book'][bookIndex]['Chapter'].length;
  // }

  String getBookByIndex(int index) {
    List<String> english = getBooks();
    return index < english.length ? english[index] : '';
  }

  List<String> getBooks() {
    return [
      'Genesis',
      'Exodus',
      'Leviticus',
      'Numbers',
      'Deuteronomy',
      'Joshua',
      'Judges',
      'Ruth',
      'I Samuel',
      'II Samuel',
      'I Kings',
      'II Kings',
      'I Chronicles',
      'II Chronicles',
      'Ezra',
      'Nehemiah',
      'Ester',
      'Job',
      'Psalms',
      'Proverbs',
      'Eccleciastes',
      'Song Of Solomon',
      'Isaiah',
      'Jeremiah',
      'Lamentations',
      'Ezekial',
      'Daniel',
      'Hosea',
      'Joel',
      'Amos',
      'Obadiah',
      'Jonah',
      'Micah',
      'Nahum',
      'Habakuk',
      'Zepheniah',
      'Haggai',
      'Zecheriah',
      'Malachi',
      'Matthew',
      'Mark',
      'Luke',
      'John',
      'Acts',
      'Romans',
      'I Corintians',
      'II Corinthians',
      'Galatians',
      'Ephesians',
      'Philipians',
      'Colosians',
      'I Thessalonians',
      'II Thessalonians',
      'I Timothy',
      'II Timothy',
      'Titus',
      'Philemon',
      'Hebrews',
      'James',
      'I Peter',
      'II Peter',
      'I John',
      'II John',
      'III John',
      'Jude',
      'Revelation'
    ];
  }
}
