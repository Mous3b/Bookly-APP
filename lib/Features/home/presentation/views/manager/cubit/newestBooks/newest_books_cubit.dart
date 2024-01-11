import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/Features/home/domain/useCases/fetchNewestBookUC.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBookUseCases) : super(NewestBooksInitial());
  final fetchNewestBookUC fetchNewestBookUseCases;
  Future<void> fetchFeatureBookCM() async {
    emit(NewestBooksLoading());
    var result = await fetchNewestBookUseCases.call();
    result.fold((failure) {
      emit(NewestBooksFailure(errmsg: failure.message));
    }, (books) {
      emit(NewestBooksScusses(books: books));
    });
  }
}
