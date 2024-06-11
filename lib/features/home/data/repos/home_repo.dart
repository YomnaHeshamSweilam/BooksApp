import 'package:booksapp/core/utils/errors/failure.dart';
import 'package:booksapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either< Failure, List<BookModel>>> getFeaturedBooks();
 Future<Either< Failure, List<BookModel>>> getNewestBooks();
}