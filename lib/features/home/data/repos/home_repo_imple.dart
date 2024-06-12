import 'package:booksapp/core/utils/api_service.dart';
import 'package:booksapp/features/home/data/models/book_model/book_model.dart';
import 'package:booksapp/core/utils/errors/failure.dart';
import 'package:booksapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple implements HomeRepo{
  final ApiService apiService;

  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> getNewestBooks() async{
    
    try{
     var data = await apiService.get(endpoints: 'volumes?Sorting=newest&q=subject: programming');
     List<BookModel> books = [];
     for( var item in data['items'])
     {
      books.add(BookModel.fromJson(item));
     }
     return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(e.toString(), ),);
    }
   
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
   try{
     var data = await apiService.get(
      endpoints: 'volumes?Filtering=free-ebooks&q=subject:Programming');
     List<BookModel> books = [];
     for( var item in data['items'])
     {
      books.add(BookModel.fromJson(item));
     }
     return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(e.toString(), ),);
    }
  }

}