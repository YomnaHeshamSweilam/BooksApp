import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:booksapp/features/home/data/models/book_model/book_model.dart';
import 'package:booksapp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo ;

  Future <Void?> getNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.getNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books)  {
      emit(NewestBooksSucess(books));
    });
    return null;
    
  
  }

}
