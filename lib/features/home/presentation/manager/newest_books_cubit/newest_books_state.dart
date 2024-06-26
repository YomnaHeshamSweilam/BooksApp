part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

 class NewestBooksInitial extends NewestBooksState {}
 class NewestBooksLoading extends NewestBooksState {}
 class NewestBooksFailure extends NewestBooksState {
  final String errorMsg;

 const NewestBooksFailure(this.errorMsg);
 }
 class NewestBooksSucess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSucess(this.books);
 }
