class DataState {}

class Loading extends DataState {}

class Success extends DataState {
  int count = 0;

  Success(this.count);

}