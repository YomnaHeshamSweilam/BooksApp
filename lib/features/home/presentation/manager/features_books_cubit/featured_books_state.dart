part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

 class FeaturedBooksInitial extends FeaturedBooksState {}
 class FeaturedBooksLoading extends FeaturedBooksState {}
 
 class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMsg;
  const FeaturedBooksFailure(this.errorMsg);
 }
 class FeaturedBooksSuccess extends FeaturedBooksState {

  final List<BookModel> books ;
  const FeaturedBooksSuccess(this.books);
 }
