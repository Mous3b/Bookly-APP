import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/Features/home/domain/useCases/fetchFeatureBookUC.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeatureBookUseCases)
      : super(FeaturedBooksInitial());
  final fetchFeatureBookUC fetchFeatureBookUseCases;
  Future<void> fetchFeatureBookCM() async {
    emit(FeaturedBooksLoading());
    var result = await fetchFeatureBookUseCases.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(errmsg: failure.message));
    }, (books) {
      emit(FeaturedBooksScusses(books: books));
    });
  }
}
