part of 'popular_tvs_bloc.dart';

@immutable
abstract class PopularTvsState extends Equatable {
  const PopularTvsState();

  @override
  List<Object?> get props => [];
}

class PopularTvsEmpty extends PopularTvsState {}

class PopularTvsLoading extends PopularTvsState {}

class PopularTvsHasData extends PopularTvsState {
  final List<Tv> result;

  const PopularTvsHasData(this.result);

  @override
  List<Object?> get props => [result];
}

class PopularTvsError extends PopularTvsState {
  final String message;

  const PopularTvsError(this.message);

  @override
  List<Object?> get props => [message];
}
