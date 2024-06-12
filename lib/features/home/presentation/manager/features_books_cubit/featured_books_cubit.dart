

import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:booksapp/features/home/data/models/book_model/book_model.dart';
import 'package:booksapp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<Void?> getFeaturedBooks() async
  {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.getFeaturedBooks();
    result.fold((failure) 
    {
     emit(FeaturedBooksFailure(failure.errMessage));
    },
     (books) {
      emit(FeaturedBooksSuccess(books));
     });

     return null;
  }
}