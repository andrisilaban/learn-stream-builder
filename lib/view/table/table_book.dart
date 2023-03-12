import 'package:flutter/material.dart';

class TableBuku extends StatefulWidget {
  const TableBuku({super.key});

  @override
  State<TableBuku> createState() => _TableBukuState();
}

class _TableBukuState extends State<TableBuku> {
  int _columnIndex = 0;
  bool _isSort = true;
  late List<bool> _isSelected;
  bool _isEdit = false;
  final List<Map> _books = [
    {
      'id': 104,
      'title': 'Flutter Basics',
      'author': 'David John',
      'photo': const FlutterLogo(),
    },
    {
      'id': 102,
      'title': 'Git and GitHub',
      'author': 'Merlin Nick',
      'photo': const FlutterLogo(),
    },
    {
      'id': 101,
      'title': 'Flutter Basics',
      'author': 'David John',
      'photo': const FlutterLogo(),
    },
    {
      'id': 105,
      'title': 'Flutter Basics',
      'author': 'David John',
      'photo': const FlutterLogo(),
    },
    {
      'id': 103,
      'title': 'Flutter Basics',
      'author': 'David John',
      'photo': const FlutterLogo(),
    },
  ];

  @override
  void initState() {
    super.initState();
    _isSelected = List<bool>.generate(_books.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _bookTable(),
          _editMode(),
          _bookPaginate(),
        ],
      ),
    );
  }

  Row _editMode() {
    return Row(children: [
      Checkbox(
        value: _isEdit,
        onChanged: (value) {
          setState(() {});
          _isEdit = value!;
        },
      ),
      const Text('EDIT MODE'),
    ]);
  }

  DataTable _bookTable() {
    return DataTable(
      columns: _headerBook(),
      rows: _rowsBook(),
      dividerThickness: 3,
      dataRowHeight: 80,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headingRowColor: MaterialStateProperty.resolveWith(
        (states) => const Color.fromARGB(255, 103, 204, 97),
      ),
    );
  }

  List<DataColumn> _headerBook() {
    return [
      DataColumn(
        label: const Text('ID'),
        onSort: (columnIndex, ascending) {
          setState(() {});
          debugPrint('STATUS INDEX $_columnIndex');
          debugPrint('STATUS IS SORT $_isSort');

          _columnIndex = columnIndex;
          if (_isSort) {
            _books.sort((a, b) => b['id'].compareTo(a['id']));
          } else {
            _books.sort((a, b) => a['id'].compareTo(b['id']));
          }
          _isSort = !_isSort;
        },
      ),
      const DataColumn(
        label: Text('TITLE'),
      ),
      const DataColumn(
        label: Text('AUTHOR'),
      ),
      const DataColumn(
        label: Text('PHOTO'),
      ),
    ];
  }

  List<DataRow> _rowsBook() {
    return _books
        .mapIndexed(
          (index, book) => DataRow(
            cells: [
              DataCell(
                Text('${book['id']}'),
              ),
              _editTitleRow(book['title']),
              DataCell(
                Text('${book['author']}'),
              ),
              DataCell(
                book['photo'] ?? const Text('HELLo'),
              ),
            ],
            selected: _isSelected[index],
            onSelectChanged: (value) {
              setState(() {
                _isSelected[index] = value!;
              });
            },
          ),
        )
        .toList();
  }

  DataCell _editTitleRow(String bookTitle) {
    return DataCell(
      _isEdit == true
          ? TextFormField(
              initialValue: bookTitle,
              style: const TextStyle(fontSize: 14),
            )
          : Text(bookTitle),
    );
  }
}

extension IterableExtension<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int index, E element) f) {
    int index = 0;
    return map((e) => f(index++, e));
  }
}

PaginatedDataTable _bookPaginate() {
  return PaginatedDataTable(
    rowsPerPage: 2,
    header: const Text("Info"),
    columns: const [
      DataColumn(
        label: Text("Language"),
      ),
      DataColumn(
        label: Text("Mascot"),
      ),
    ],
    source: Source(),
  );
}

class Source extends DataTableSource {
// The data of the table. They're here as a static list just
// to keep the example simple.
  static final values = {
    "Flutter": "Dash",
    "Java": "Duke",
    "Delphi": "Helmet",
    "PHP": "ElePHPant",
    "MySQL": "Dolphin",
  }.entries.toList();
  @override
  DataRow? getRow(int index) {
    final data = values[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(data.key)),
      DataCell(Text(data.value)),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => values.length;
  @override
  int get selectedRowCount => 0;
}
