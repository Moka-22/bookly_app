part of 'newset_books_cubit.dart';

abstract class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewsetBooksState {}

class NewestBooksLoading extends NewsetBooksState {}

class NewestBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewsetBooksState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}
