import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksDataToHive(String boxName, List<BookEntity> books) {
  var box = Hive.box(boxName);
  box.addAll(books);
}