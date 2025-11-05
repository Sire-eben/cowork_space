extension Collection<T> on List<T> {
  List<T> sorted([int Function(T a, T b)? compare]) {
    final sorted = List<T>.from(this);
    sorted.sort(compare);
    return sorted;
  }
}
//endregion

//region Unique
extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inPlace = true]) {
    final ids = <dynamic>{};
    var list = inPlace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}
