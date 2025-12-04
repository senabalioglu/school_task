class Todo{
  int? ids;
  final String titles;
  DateTime creationDate;
  bool isChecked;

  Todo({
    this.ids,
    required this.titles,
    required this.creationDate,
    required this.isChecked,
  });

  Map<String, dynamic> toMap(){
    return{
      'ids': ids,
      'titles' : titles,
      'creationDate' : creationDate.toString(),
      'isChecked' : isChecked ? 1 : 0,
    };
  }
  @override
  String toString(){
    return 'Todo(ids: $ids, titles: $titles, creationDate: $creationDate, isChecked: $isChecked)';
  }
}